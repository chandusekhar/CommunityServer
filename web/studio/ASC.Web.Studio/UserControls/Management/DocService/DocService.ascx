﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DocService.ascx.cs" Inherits="ASC.Web.Studio.UserControls.Management.DocService" %>
<%@ Import Namespace="ASC.Web.Core.Files" %>
<%@ Import Namespace="ASC.Web.Studio.Utility" %>
<%@ Import Namespace="Resources" %>

<div id="docServiceBlock" class="settings-block">
    <div class="header-base"><%= Resource.DocServiceUrl %></div>

    <p><%= Resource.DocServiceText %></p>

    <div class="doc-service-item">
        <div class="header-base-small"><%= Resource.DocServiceUrlApi %></div>
        <input id="docServiceUrlApi" type="text" class="doc-service-value textEdit"
            value="<%= FilesLinkUtility.DocServiceApiUrl.HtmlEncode() %>" placeholder="https://<editors-dns-name>/web-apps/apps/api/documents/api.js" />
        <div class="gray-text"><%= string.Format(Resource.DocServiceUrlExample, "https://&lt;editors-dns-name&gt;/web-apps/apps/api/documents/api.js") %> </div>
    </div>
    <div class="doc-service-item">
        <div class="header-base-small"><%= Resource.DocServiceUrlCommand %></div>
        <input id="docServiceUrlCommand" type="text" class="doc-service-value textEdit"
            value="<%= FilesLinkUtility.DocServiceCommandUrl.HtmlEncode() %>" placeholder="https://<editors-dns-name>/coauthoring/CommandService.ashx" />
        <div class="gray-text"><%= string.Format(Resource.DocServiceUrlExample, "https://&lt;editors-dns-name&gt;/coauthoring/CommandService.ashx") %> </div>
    </div>
    <div class="doc-service-item">
        <div class="header-base-small"><%= Resource.DocServiceUrlStorage %></div>
        <input id="docServiceUrlStorage" type="text" class="doc-service-value textEdit"
            value="<%= FilesLinkUtility.DocServiceStorageUrl.HtmlEncode() %>" placeholder="https://<editors-dns-name>/FileUploader.ashx" />
        <div class="gray-text"><%= string.Format(Resource.DocServiceUrlExample, "https://&lt;editors-dns-name&gt;/FileUploader.ashx") %> </div>
    </div>
    <div class="doc-service-item">
        <div class="header-base-small"><%= Resource.DocServiceUrlConverter %></div>
        <input id="docServiceUrlConverter" type="text" class="doc-service-value textEdit"
            value="<%= FilesLinkUtility.DocServiceConverterUrl.HtmlEncode() %>" placeholder="https://<editors-dns-name>/ConvertService.ashx" />
        <div class="gray-text"><%= string.Format(Resource.DocServiceUrlExample, "https://&lt;editors-dns-name&gt;/ConvertService.ashx") %> </div>
    </div>
    <% if (TenantExtra.EnableDocbuilder)
       { %>
    <div class="doc-service-item">
        <div class="header-base-small"><%= Resource.DocServiceUrlDocbuilder %></div>
        <input id="docServiceUrlDocbuilder" type="text" class="doc-service-value textEdit"
            value="<%= FilesLinkUtility.DocServiceDocbuilderUrl.HtmlEncode() %>" placeholder="https://<editors-dns-name>/Docbuilder.ashx" />
        <div class="gray-text"><%= string.Format(Resource.DocServiceUrlExample, "https://&lt;editors-dns-name&gt;/Docbuilder.ashx") %> </div>
    </div>
    <% } %>
    <div class="doc-service-item">
        <div class="header-base-small"><%= Resource.DocServiceUrlPortal %></div>
        <input id="docServiceUrlPortal" type="text" class="doc-service-value textEdit"
            value="<%= FilesLinkUtility.DocServicePortalUrl.HtmlEncode() %>" placeholder="<%= CommonLinkUtility.ServerRootPath %>" />
        <div class="gray-text"><%= string.Format(Resource.DocServiceUrlExample, CommonLinkUtility.ServerRootPath) %> </div>
    </div>

    <div class="middle-button-container">
        <span id="docServiceButtonSave" class="button blue"><%= Resource.SaveButton %></span>
    </div>
</div>
<div class="settings-help-block">
    <p><%= String.Format((Resource.DocServiceUrlHelp + (TenantExtra.EnableDocbuilder ? Resource.DocServiceUrlDocbuilderHelp : "")).HtmlEncode(), "<br />", "<b>", "</b>") %></p>
</div>
