<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="QuanLySanXuat._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <style >
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
        <div class="trang1">
            <div class="tab1">
                <d>Filter Orders:</d>  <%--Lọc đơn hàng--%>
                <button type="button" class="btn btn-secondary">Today</button><%-- hôm nay--%>
                <button type="button" class="btn btn-secondary">Three Days</button> <%--3 ngày--%>
                <button type="button" class="btn btn-secondary">Reset</button> <%--Cài đặt lại--%>
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
                    <button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#exampleModal2">Details</button> <%--chi tiết--%>
                    <button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#exampleModal1">New</button> <%--Tạo mới--%>
                    <button type="button" class="btn btn-secondary">Edit</button> <%--Xóa--%>
                    <button type="button" class="btn btn-secondary">Cancel</button><%-- Hủy lựa chọn--%>
                    <button type="button" class="btn btn-secondary">Resources</button> <%--Tài nguyên--%>
                    <button type="button" class="btn btn-secondary">x</button>
                </div>
            </div>

            <div class="tab3 mt-2">
                <table border="1">
                    <thead>
                        <tr style="border: 1px solid black;background-color:aliceblue">
                            <th style="border: 1px solid black;">Khác</th>
                            <th style="border: 1px solid black;">
                                <d>Order Status</d>
                                <select class="form-select thanhNhap" aria-label="Default select example">
                                  <option selected></option>
                                  <option value="1">Started</option>
                                  <option value="2">New</option>
                                  <option value="3">Cancelled</option>
                                </select>
                            </th>
                            <th style="border: 1px solid black;">
                                <d>Order No</d> <br />
                                <input class="thanhNhap" type="text" id="" name="" required>
                            </th>
                            <th style="border: 1px solid black;">
                                <d>Order Type</d>
                                <select class="form-select thanhNhap" aria-label="Default select example">
                                  <option selected></option>
                                  <option value="1">One</option>
                                  <option value="2">Two</option>
                                  <option value="3">Three</option>
                                </select>
                            </th>
                            <th style="border: 1px solid black;">
                                <d>Supplier</d> <br/>
                                <input class="thanhNhap" type="text" id="" name="" required>
                            </th>
                            <th style="border: 1px solid black;">
                                <d>Scheduled Reception</d> <br/>
                                <input class="thanhNhap" type="date" id="startDate" name="startDate" required> <br/>
                                <input class="thanhNhap" type="date" id="endDate" name="endDate" required>
                            </th>
                            <th style="border: 1px solid black;">
                                <d>Priority</d> <br />
                                <input class="thanhNhap" type="text" id="" name="" required>
                            </th>
                            <th style="border: 1px solid black;">Completed Lines</th>
                            <th style="border: 1px solid black;">
                                <d>Facility</d> <br />
                                <input class="thanhNhap" type="text" id="" name="" required>
                            </th>
                            <th style="border: 1px solid black;">
                                <d>Warehouse</d> <br />
                                <input class="thanhNhap" type="text" id="" name="" required>
                            </th>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>ASN Inbound Delivery Order</td>
                            <td>VF_SUPPLIER_01</td>
                            <td></td>
                            <td>1</td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>

                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>ASN Inbound Delivery Order</td>
                            <td>VF_SUPPLIER_01</td>
                            <td></td>
                            <td>1</td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>

                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>ASN Inbound Delivery Order</td>
                            <td>VF_SUPPLIER_01</td>
                            <td></td>
                            <td>1</td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>

                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>ASN Inbound Delivery Order</td>
                            <td>VF_SUPPLIER_01</td>
                            <td></td>
                            <td>1</td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>

                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>ASN Inbound Delivery Order</td>
                            <td>VF_SUPPLIER_01</td>
                            <td></td>
                            <td>1</td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>

                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>ASN Inbound Delivery Order</td>
                            <td>VF_SUPPLIER_01</td>
                            <td></td>
                            <td>1</td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>

                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>ASN Inbound Delivery Order</td>
                            <td>VF_SUPPLIER_01</td>
                            <td></td>
                            <td>1</td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    </thead>
                </table>
            </div>

            <div class=""></div>



<!-- Modal nhập kho <New> -->
<div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">New Order</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
         <form id="NewOrder">
             <div class="row">
                 <div class="col-6">
                   <label for="">Order No</label>
                   <input type="text" class="form-control" id="" required>
                 </div>
                 <div class="col-6">
                   <label for="">Order Type</label>
                   <select class="form-select" aria-label="Default select example">
                     <option selected></option>
                     <option value="1">Started</option>
                     <option value="2">New</option>
                     <option value="3">Cancelled</option>
                   </select>
                 </div>
                 <div class="col-6">
                   <label for="">Scheduled ReCeption</label>
                   <input type="datetime" class="form-control" id="" required>
                 </div>
                 <div class="col-6">
                   <label for="">Supplier</label>
                   <input type="text" class="form-control" id="" required>
                 </div>
                 <div class="col-6">
                   <label for="">Order Status</label>
                   <select class="form-select" aria-label="Default select example">
                     <option selected></option>
                     <option value="1">Started</option>
                     <option value="2">New</option>
                     <option value="3">Cancelled</option>
                   </select>
                 </div>
                 <div class="col-6">
                   <label for="">Priority</label>
                   <select class="form-select" aria-label="Default select example">
                     <option selected></option>
                     <option value="1">Started</option>
                     <option value="2">New</option>
                     <option value="3">Cancelled</option>
                   </select>
                 </div>
             </div>
          </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>



<!-- Modal Xem chi tiết -->
<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

        </div>


</asp:Content>
