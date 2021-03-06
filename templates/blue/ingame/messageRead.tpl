{include '../header.tpl'}
<div class="content">
    <p><h1>Bericht</h1></p>
    {if isset($form_error)}
    <div class="error">
        {$form_error}
    </div>
    {elseif isset($success)}
    <div class="success">
        {$success}
    </div>
    {/if}
    <a href="{$ROOT_URL}ingame/message.php?page=inbox">Inbox</a> - <a href="{$ROOT_URL}ingame/message.php?page=outbox">Outbox</a> - <a href="{$ROOT_URL}ingame/message.php?page=new">Nieuw</a>
    
    <table width="50%" border="0">
            <tr>
                <td class="coll">Van:</td>
                <td class="coll">{$message['username']}</td>
            </tr>
            <tr>
                <td class="coll">Onderwerp: </td>
                <td class="coll">{$message['message_subject']}</td>
            </tr>
            <tr>
                <td class="coll">Datum: </td>
                <td class="coll">{$message['message_time']}</td>
            </tr>
            <tr>
                <td class="coll">Bericht: </td>
                <td class="coll">{$message['message_message']|nl2br}</td>
            </tr>
        </table>
            
                <div class="center"><a href="{$ROOT_URL}ingame/message.php?page=new&id={$message['id']}">Reageer op dit bericht</a></div>
</div>
{include '../footer.tpl'}