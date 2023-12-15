<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="QuanLySanXuat.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>

        .a1 {
           text-decoration: none;
           color: black;
           margin-right: 20px;
        }
        .a2 {
           text-decoration: none;
           color: gray;
           margin-right: 20px;
        }
                    .trang1 {
            margin: 0 !important;
            }
            .tab2 {
                display: flex;
            }
            th {
                white-space: nowrap;
            }
            .thanhNhap {
               width: 160px !important; 
               height: 40px !important;
            }
    </style>
    <div class="trang2">
        <div>
            <a class="a1" href="#">Order Lines</a>
            <a class="a2" href="#">Containers</a>
            <a class="a2" href="#">Content</a>
            <a class="a2" href="#">Resources</a>
        </div>
            <div class= "tab2 mt-2">
                <d class="my-auto">Profile:</d>
                <select class="form-select thanhNhap" aria-label="Default select example">
                  <option selected>Defauult Profile</option>
                  <option value="1">One</option>
                  <option value="2">Two</option>
                  <option value="3">Three</option>
                </select>
                <div class="ms-auto">
                    <button type="button" class="btn btn-secondary">Release</button>  <%--Cài lại--%>
                    <button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#exampleModal3">New</button> <%--Tạo mới--%>
                    <button type="button" class="btn btn-secondary">Edit</button> <%--Xóa--%>
                    <button type="button" class="btn btn-secondary">Cancel</button><%-- Hủy lựa chọn--%>
                    <button type="button" class="btn btn-secondary">x</button>
                </div>
            </div>
    </div>


<!-- Modal -->
<div class="modal fade" id="exampleModal3" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">New Order Line</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
        <form action="/" method="post">
          <div class="modal-body">
            ...
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Save changes</button>
          </div>
            </form>
    </div>
  </div>
</div>

</asp:Content>
