import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:enhantodo/viewmodel/todo_detail_viewmodel.dart';
import 'package:enhantodo/model/db.dart';

class TodoDetail extends StatelessWidget {
  final String _title;
  final Todo _oldTodo;

  const TodoDetail(this._title, [this._oldTodo]);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (_) => TodoDetailViewModel(_oldTodo),
        child: Scaffold(
          appBar: AppBar(
            title: Text(_title),
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.all(20.0),
            child: Form(
              child: Builder(
                builder: (BuildContext context) => Column(
                  children: <Widget>[
                    TodoTitleFormField(),
                    TodoDueDateField(),
                    SizedBox(height: 10),
                    TodoBodyFormField(),
                    SizedBox(height: 10),
                    ConfirmButtonWidget(_oldTodo == null),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}

class TodoTitleFormField extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Consumer<TodoDetailViewModel>(
        builder: (_, TodoDetailViewModel viewModel, __) => TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Title',
          ),
          maxLength: 30,
          initialValue: viewModel.title,
          validator: (v) => v.isEmpty ? 'Required' : null,
          onSaved: (v) =>
              Provider.of<TodoDetailViewModel>(context, listen: false).title =
                  v,
        ),
      );
}

class TodoDueDateField extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Consumer<TodoDetailViewModel>(
        builder: (_, TodoDetailViewModel viewModel, __) => Row(
          children: <Widget>[
            Text(
              'Due date:',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(width: 15),
            Text(viewModel.dateTextOfDueDate),
            IconButton(
              icon: Icon(Icons.calendar_today),
              onPressed: () async {
                final now = DateTime.now();
                final selected = await showDatePicker(
                  context: context,
                  initialDate: now,
                  firstDate: DateTime(now.year - 1),
                  lastDate: DateTime(now.year + 2),
                  locale: const Locale('ja'),
                );
                if (selected != null)
                  Provider.of<TodoDetailViewModel>(context, listen: false)
                      .dateOfDueDate = selected;
              },
            ),
            Text(viewModel.timeTextOfDueDate),
            IconButton(
              icon: Icon(Icons.access_time),
              onPressed: () async {
                final now = TimeOfDay.now();
                final selected = await showTimePicker(
                  context: context,
                  initialTime: now,
                );
                if (selected != null)
                  Provider.of<TodoDetailViewModel>(context, listen: false)
                      .timeOfDueDate = selected;
              },
            ),
          ],
        ),
      );
}

class TodoBodyFormField extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Consumer<TodoDetailViewModel>(
        builder: (_, TodoDetailViewModel viewModel, __) => TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Body',
          ),
          minLines: 3,
          maxLines: 10,
          initialValue: viewModel.body,
          onSaved: (v) =>
              Provider.of<TodoDetailViewModel>(context, listen: false).body = v,
        ),
      );
}

class ConfirmButtonWidget extends StatelessWidget {
  final bool _isCreate;

  const ConfirmButtonWidget(this._isCreate);

  Widget _confirmButton(BuildContext context) => RaisedButton(
        onPressed: () {
          final _form = Form.of(context);
          if (_form.validate()) {
            _form.save();
            Provider.of<TodoDetailViewModel>(context, listen: false).submit();
          }
          Navigator.pop(context);
        },
        child: Text(_isCreate ? 'Create' : 'Update'),
      );

  @override
  Widget build(BuildContext context) {
    if (_isCreate)
      return Align(
        alignment: Alignment.topRight,
        child: _confirmButton(context),
      );
    else
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              Provider.of<TodoDetailViewModel>(context, listen: false).delete();
              Navigator.pop(context);
            },
            color: Colors.red,
            child: Text('Delete'),
          ),
          SizedBox(width: 10),
          _confirmButton(context)
        ],
      );
  }
}
