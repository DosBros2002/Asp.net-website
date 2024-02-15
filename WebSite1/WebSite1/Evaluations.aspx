<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Evaluations.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 2052px;
            background-color: #FFFFCC;
            width: 1477px;
        }
        .auto-style1 {
            font-size: medium;
        }
    </style>
</head>
<body style="background-color: #FFFFCC">
    <form id="form1" runat="server">
        <div>
        </div>
        <div style="margin-left: 506px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="FYP  EVALUATION FORM"></asp:Label>
        &nbsp;
        </div>
        <p style="margin-left: 91px; height: 35px;">
            Enter Your Pannel Member ID : <asp:TextBox ID="TextBox2" runat="server" Width="149px"></asp:TextBox>
        </p>
        <p style="margin-left: 91px; height: 35px;">
            Enter the Project ID:&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </p>
        <p style="margin-left: 91px; height: 35px;">
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" Text="1. FYP Poster"></asp:Label>
        </p>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" style="margin-left: 282px" Width="693px" RepeatDirection="Horizontal">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
            </asp:RadioButtonList>
        <p style="margin-left: 94px; height: 35px;">
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="2. Iteration Definition, FYP Plan, Work Breakdown"></asp:Label>
        </p>
            <asp:RadioButtonList  ID="RadioButtonList2" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" style="margin-left: 282px" Width="693px" RepeatDirection="Horizontal">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
            </asp:RadioButtonList>
        <p style="margin-left: 94px; height: 35px;">
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" Text="3. Work completed for the iteration(s) including design &amp; implementation"></asp:Label>
        </p>
            <asp:RadioButtonList ID="RadioButtonList3" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" style="margin-left: 282px" Width="693px">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
            </asp:RadioButtonList>
        <p style="margin-left: 94px; height: 35px;">
            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" Text="4. Slide Design and Content Quality"></asp:Label>
        </p>
            <asp:RadioButtonList ID="RadioButtonList4" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal"  style="margin-left: 282px" Width="693px">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
            </asp:RadioButtonList>
        <p style="margin-left: 94px; height: 35px;">
            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" Text="5. Style (Delivery, Confidence, Clarity)"></asp:Label>
        </p>
            <asp:RadioButtonList ID="RadioButtonList5" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" style="margin-left: 282px" Width="693px">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
            </asp:RadioButtonList>
        <p style="margin-left: 94px; height: 35px;">
            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" Text="6. Clarity of Project Scope"></asp:Label>
        </p>
            <asp:RadioButtonList ID="RadioButtonList6" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" style="margin-left: 282px" Width="693px">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
            </asp:RadioButtonList>
        <p style="margin-left: 94px; height: 35px;">
            <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large" Text="7. Definition of Project Features"></asp:Label>
        </p>
            <asp:RadioButtonList  ID="RadioButtonList7" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" style="margin-left: 282px" Width="693px">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
            </asp:RadioButtonList>
        <p style="margin-left: 94px; height: 35px;">
            <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Large" Text="8. Team Dynamics (Coordination among team members)"></asp:Label>
        </p>
            <asp:RadioButtonList ID="RadioButtonList8" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" style="margin-left: 282px" Width="693px">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
            </asp:RadioButtonList>
        <p style="margin-left: 94px; height: 35px;">
            <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Large" Text="9. Timing of Presentation"></asp:Label>
        </p>
            <asp:RadioButtonList ID="RadioButtonList9" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" style="margin-left: 282px" Width="693px">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
            </asp:RadioButtonList>
        <p style="margin-left: 94px; height: 35px;">
            <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Large" Text="10. Implementation Work Completion"></asp:Label>
        </p>
            <asp:RadioButtonList ID="RadioButtonList10" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" style="margin-left: 282px" Width="693px">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
            </asp:RadioButtonList>
        <p style="margin-left: 94px; height: 35px;">
            <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Large" Text="11. Overall work quality and impression"></asp:Label>
        </p>
            <asp:RadioButtonList ID="RadioButtonList11" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" style="margin-left: 282px" Width="693px">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
            </asp:RadioButtonList>
        <p style="margin-left: 94px; height: 35px;">
            <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Large" Text="12. Code Quality"></asp:Label>
        </p>
            <asp:RadioButtonList ID="RadioButtonList12" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" style="margin-left: 282px" Width="693px">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
            </asp:RadioButtonList>
        <p style="margin-left: 94px; height: 35px;">
            <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="Large" Text="13. Level of code integration"></asp:Label>
        </p>
            <asp:RadioButtonList ID="RadioButtonList13" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" style="margin-left: 282px" Width="693px">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
            </asp:RadioButtonList>
        <p style="margin-left: 94px; height: 35px;">
            <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Size="Large" Text="14. Class Diagram/DFD (provided in the report) correctly maps to the Code Implemented"></asp:Label>
        </p>
            <asp:RadioButtonList ID="RadioButtonList14" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" style="margin-left: 282px" Width="693px">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
            </asp:RadioButtonList>
        <p style="margin-left: 94px; height: 35px;">
            <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Size="Large" Text="15. Handling of Questions"></asp:Label>
        </p>
            <asp:RadioButtonList ID="RadioButtonList15" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" style="margin-left: 282px" Width="693px">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
            </asp:RadioButtonList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<p class="auto-style1" style="margin-left: 80px">
            <strong>Review Box</strong></p>
        <p class="auto-style1" style="margin-left: 80px">
            <asp:TextBox ID="TextBox1" runat="server" Height="128px" Width="1149px"></asp:TextBox>
        </p>
        <p class="auto-style1" style="margin-left: 1240px">
            <asp:Button ID="Button1" runat="server" Text="Confirm" OnClick="Button1_Click" style="z-index: 1; left: 1112px; top: 2024px; position: absolute" />
        </p>
    </form>
</body>
</html>
