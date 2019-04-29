<#import "parts/common.ftl" as c>

<@c.page>
    <h5>${username}</h5>
    ${message?ifExists}
    <form method="post">
<div class="form-group">
    <label class="col-sm col-form-label">Password</label>
    <div class="col-sm-5">
        <input type="password" name="password" class="form-control" placeholder="Password" />
    </div>
</div>
        <div class="form-group">
            <label class="col-sm col-form-label">Email</label>
            <div class="col-sm-5">
                <input type="email" name="email" class="form-control" placeholder="example@example.com" value="${email!''}"/>
            </div>
        </div>
<input type="hidden" name="_csrf" value="${_csrf.token}" />
    <button class="btn btn-success ml-3" type="submit">Save</button>
    </form>
</@c.page>