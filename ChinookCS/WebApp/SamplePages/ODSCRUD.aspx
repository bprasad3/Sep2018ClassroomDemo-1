﻿<%@ Page Title="ODS CRUD" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ODSCRUD.aspx.cs" Inherits="WebApp.SamplePages.ODSCRUD" %>

<%@ Register Src="~/UserControls/MessageUserControl.ascx" TagPrefix="uc1" TagName="MessageUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>ODS CRUD</h1>
    <blockquote>
        The reference to data using Eval or Bind is dependent on the type of control
        and the template the reference is used.
        <br />
        For a ODS Delete to be successful you <strong><u>MUST</u></strong> include on the
        Listview set of attributes the DataKeyNames. This is set to the primary key attribute
        of the entity.
    </blockquote>
    <uc1:MessageUserControl runat="server" ID="MessageUserControl" />

    <asp:ListView ID="AlbumList" runat="server" DataSourceID="AlbumListODS" 
        InsertItemPosition="LastItem" DataKeyNames="AlbumId">
        <AlternatingItemTemplate>
            <tr style="background-color: #FFFFFF; color: #284775;">
                <td>
                    <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("AlbumId") %>' runat="server" 
                        ID="AlbumIdLabel" Enabled="false" Width="50px" /></td>
                <td>
                    <asp:Label Text='<%# Eval("Title") %>' runat="server" ID="TitleLabel" /></td>
                <td>
                    <asp:DropDownList ID="ArtistList" runat="server" 
                        DataSourceID="ArtistListODS" 
                        DataTextField="Name" 
                        DataValueField="ArtistId"
                        selectedvalue='<%# Eval("ArtistId") %>'
                         Width="200px"></asp:DropDownList>
                </td>
                <td>
                    <asp:Label Text='<%# Eval("ReleaseYear") %>' runat="server" 
                        ID="ReleaseYearLabel" Width="75px"/></td>
                <td>
                    <asp:Label Text='<%# Eval("ReleaseLabel") %>' runat="server" ID="ReleaseLabelLabel" /></td>
               
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color: #999999;">
                <td>
                    <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                    <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                </td>
                <td>
                    <asp:TextBox Text='<%# Bind("AlbumId") %>' runat="server" 
                        ID="AlbumIdTextBox" Enabled="false" Width="50px"/></td>
                <td>
                    <asp:TextBox Text='<%# Bind("Title") %>' runat="server" ID="TitleTextBox" /></td>
                <td>
                    <asp:DropDownList ID="ArtistList" runat="server" 
                        DataSourceID="ArtistListODS" 
                        DataTextField="Name" 
                        DataValueField="ArtistId"
                        selectedvalue='<%# Bind("ArtistId") %>'
                         Width="200px"></asp:DropDownList>

                </td>
                <td>
                    <asp:TextBox Text='<%# Bind("ReleaseYear") %>' runat="server" 
                        ID="ReleaseYearTextBox" Width="75px"/></td>
                <td>
                    <asp:TextBox Text='<%# Bind("ReleaseLabel") %>' runat="server" ID="ReleaseLabelTextBox" /></td>
               
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                    <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                </td>
                <td>
                    <asp:TextBox Text='<%# Bind("AlbumId") %>' runat="server" 
                        ID="AlbumIdTextBox" Enabled="false" Width="50px"/></td>
                <td>
                    <asp:TextBox Text='<%# Bind("Title") %>' runat="server" ID="TitleTextBox" /></td>
                <td>
                    <asp:DropDownList ID="ArtistList" runat="server" 
                        DataSourceID="ArtistListODS" 
                        DataTextField="Name" 
                        DataValueField="ArtistId"
                        selectedvalue='<%# Bind("ArtistId") %>'
                         Width="200px"></asp:DropDownList>

                </td>
                <td>
                    <asp:TextBox Text='<%# Bind("ReleaseYear") %>' runat="server" 
                        ID="ReleaseYearTextBox" Width="75px"/></td>
                <td>
                    <asp:TextBox Text='<%# Bind("ReleaseLabel") %>' runat="server" ID="ReleaseLabelTextBox" /></td>
               
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color: #E0FFFF; color: #333333;">
                <td>
                    <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("AlbumId") %>' runat="server" 
                        ID="AlbumIdLabel" Enabled="false" Width="50px"/></td>
                <td>
                    <asp:Label Text='<%# Eval("Title") %>' runat="server" ID="TitleLabel" /></td>
                <td>
                    <asp:DropDownList ID="ArtistList" runat="server" 
                        DataSourceID="ArtistListODS" 
                        DataTextField="Name" 
                        DataValueField="ArtistId"
                        selectedvalue='<%# Eval("ArtistId") %>'
                         Width="200px"></asp:DropDownList>

                </td>
                <td>
                    <asp:Label Text='<%# Eval("ReleaseYear") %>' runat="server" 
                        ID="ReleaseYearLabel" Width="75px"/></td>
                <td>
                    <asp:Label Text='<%# Eval("ReleaseLabel") %>' runat="server" ID="ReleaseLabelLabel" /></td>
               
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table runat="server" id="itemPlaceholderContainer" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;" border="1">
                            <tr runat="server" style="background-color: #E0FFFF; color: #333333;">
                                <th runat="server"></th>
                                <th runat="server">Id</th>
                                <th runat="server">Title</th>
                                <th runat="server">Artist</th>
                                <th runat="server">Year</th>
                                <th runat="server">Label</th>
                                
                            </tr>
                            <tr runat="server" id="itemPlaceholder"></tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF">
                        <asp:DataPager runat="server" ID="DataPager1">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True"></asp:NextPreviousPagerField>
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #E2DED6; font-weight: bold; color: #333333;">
                <td>
                    <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("AlbumId") %>' runat="server" 
                        ID="AlbumIdLabel" Enabled="false" Width="50px"/></td>
                <td>
                    <asp:Label Text='<%# Eval("Title") %>' runat="server" ID="TitleLabel" /></td>
                <td>
                    <asp:DropDownList ID="ArtistList" runat="server" 
                        DataSourceID="ArtistListODS" 
                        DataTextField="Name" 
                        DataValueField="ArtistId"
                        selectedvalue='<%# Eval("ArtistId") %>'
                         Width="200px"></asp:DropDownList>

                </td>
                <td>
                    <asp:Label Text='<%# Eval("ReleaseYear") %>' runat="server" 
                        ID="ReleaseYearLabel"  Width="75px"/></td>
                <td>
                    <asp:Label Text='<%# Eval("ReleaseLabel") %>' runat="server" ID="ReleaseLabelLabel" /></td>
                
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
     <asp:ObjectDataSource ID="ArtistListODS" runat="server" 
        OldValuesParameterFormatString="original_{0}" 
        SelectMethod="Artist_List" 
        TypeName="ChinookSystem.BLL.ArtistController"
          OnSelected="CheckForException">
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="AlbumListODS" runat="server" 
        DataObjectTypeName="Chinook.Data.Entities.Album" 
        DeleteMethod="Album_Delete" 
        InsertMethod="Album_Add" 
        SelectMethod="Album_List"
        UpdateMethod="Album_Update"
        OldValuesParameterFormatString="original_{0}" 
        TypeName="ChinookSystem.BLL.AlbumController" 
        OnDeleted="CheckForException"
         OnInserted="CheckForException"
         OnSelected="CheckForException"
         OnUpdated="CheckForException">

    </asp:ObjectDataSource>
</asp:Content>
