<cfoutput>
<cfset date = DateFormat( #myQuery.timestamp# )/>
<cfset time = TimeFormat( #myQuery.timestamp# )/>
<cfset datetime = #date# & " " & #time#/>
<h4 id="note_#myQuery.id#">Note #myquery.id#</h4>
<blockquote>#myquery.note#</blockquote>#datetime#<br>
<hr>
<div style='float:left'>
    <form action="/process/delete_note.cfm" method="post">
        <input type="hidden" name="deleteID" value="#myquery.id#">
        <button type="submit" class="btn btn-danger">
            <i class="fa fa-trash-o fa-lg"></i> Delete
        </button>
    </form>
</div>
<div style='float:left'>
    &nbsp;
</div>
<div style='float:left'>
    <form action="edit.cfm" method="post">
        <input type="hidden" name="editID" value="#myquery.id#">
        <button type="submit" class="btn btn-success">
            <i class="fa fa-pencil-square-o fa-lg"></i> Edit
        </button>
    </form>
</div>
<div style='float:left'>
    &nbsp;
</div>
<div style='float:left'>
    <form action="/process/done.cfm" method="post">
        <input type="hidden" name="doneID" value="#myquery.id#">
            <button type="submit"#myquery.done EQ 'FALSE' ? ' class="btn btn-danger"' : ' class="btn btn-success"'#>
                <i #myquery.done EQ 'FALSE' ? ' class="fa fa-times fa-lg"' : ' class="fa fa-check fa-lg"'#></i> Done?
            </button>
    </form>
</div>
<br><br>
</cfoutput>