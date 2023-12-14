<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="QuanLySanXuat._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-bar-down" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M1 3.5a.5.5 0 0 1 .5-.5h13a.5.5 0 0 1 0 1h-13a.5.5 0 0 1-.5-.5M8 6a.5.5 0 0 1 .5.5v5.793l2.146-2.147a.5.5 0 0 1 .708.708l-3 3a.5.5 0 0 1-.708 0l-3-3a.5.5 0 0 1 .708-.708L7.5 12.293V6.5A.5.5 0 0 1 8 6"/>
</svg>

    <main>
       <%-- <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">ASP.NET</h1>
            <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
            <p><a href="http://www.asp.net" class="btn btn-primary btn-md">Learn more &raquo;</a></p>
        </section>

        <div class="row">
            <section class="col-md-4" aria-labelledby="gettingStartedTitle">
                <h2 id="gettingStartedTitle">Getting started</h2>
                <p>
                    ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
                A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="librariesTitle">
                <h2 id="librariesTitle">Get more libraries</h2>
                <p>
                    NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="hostingTitle">
                <h2 id="hostingTitle">Web Hosting</h2>
                <p>
                    You can easily find a web hosting company that offers the right mix of features and price for your applications.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
                </p>
            </section>
        </div>
    </main>--%>
        <style>
            .trang1 {
            margin: 0;
            padding: 0;
            height: 100%;
            }
            .tab2 {
                display: flex;
            }

        </style>
        <div class="trang1">
            <div class="tab1 mt-5">
                <d>Filter Orders:</d>
                <button type="button" class="btn btn-secondary">Today</button>
                <button type="button" class="btn btn-secondary">Three Days</button>
                <button type="button" class="btn btn-secondary">Reset</button>
            </div>

            <div class= "tab2 mt-5">
                <d>Profile:</d>
                <select class="form-select" aria-label="Default select example">
                  <option selected></option>
                  <option value="1">One</option>
                  <option value="2">Two</option>
                  <option value="3">Three</option>
                </select>
                <div class="ms-auto">
                    <button type="button" class="btn btn-secondary">Release</button>
                    <button type="button" class="btn btn-secondary">Details</button>
                    <button type="button" class="btn btn-secondary">New</button>
                    <button type="button" class="btn btn-secondary">Edit</button>
                    <button type="button" class="btn btn-secondary">Cancel</button>
                    <button type="button" class="btn btn-secondary">Resources</button>
                    <button type="button" class="btn btn-secondary"><i class="bi bi-arrow-bar-down"></i></button>
                </div>
            </div>

            <div class="tab3 mt-5">
                <table border="1" style="background-color:aliceblue">
                    <thead>
                        <tr style="border: 1px solid black;">
                            <th style="border: 1px solid black;"></th>
                            <th style="border: 1px solid black;">
                                <d>Order Status</d>
                                <select class="form-select" aria-label="Default select example">
                                  <option selected></option>
                                  <option value="1">One</option>
                                  <option value="2">Two</option>
                                  <option value="3">Three</option>
                                </select>
                            </th>
                            <th style="border: 1px solid black;">
                                <d>Order No</d> <br />
                                <input type="text" id="" name="" required>
                            </th>
                            <th style="border: 1px solid black;">
                                <d>Order Type</d>
                                <select class="form-select" aria-label="Default select example">
                                  <option selected></option>
                                  <option value="1">One</option>
                                  <option value="2">Two</option>
                                  <option value="3">Three</option>
                                </select>
                            </th>
                            <th style="border: 1px solid black;">
                                <d>Supplier</d> <br/>
                                <input type="text" id="" name="" required>
                            </th>
                            <th style="border: 1px solid black;">
                                <d>Scheduled Reception</d> <br/>
                                <input type="date" id="startDate" name="startDate" required> <br/>
                                <input type="date" id="endDate" name="endDate" required>
                            </th>
                            <th style="border: 1px solid black;">
                                <d>Priority</d> <br />
                                <input type="text" id="" name="" required>
                            </th>
                            <th style="border: 1px solid black;">Completed Lines</th>
                            <th style="border: 1px solid black;">
                                <d>Facility</d> <br />
                                <input type="text" id="" name="" required>
                            </th>
                            <th style="border: 1px solid black;">
                                <d>Warehouse</d> <br />
                                <input type="text" id="" name="" required>
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
        </div>


</asp:Content>
