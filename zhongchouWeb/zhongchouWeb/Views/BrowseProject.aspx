<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BrowseProject.aspx.cs" Inherits="ZhongChouWeb.BrowseProject" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>众筹网-项目详情</title>
    <script src="../Script/jQuerys/jquery-1.10.2.min.js"></script>
    <link href="../Content/Css/BrowseCss.css" rel="stylesheet" />
    <script src="../Script/BrowseJs.js"></script>

    <style type="text/css">
        .headerPage .UserInfoDrop_downBoxUl {
            width:150px;
            margin-left:-10px;
            
        }
        .headerPage .UserInfoDrop_downBoxUl li a{
            font-size:12px;
        }
    </style>
</head>
<body>

    <!-- 顶部导航 页眉 -->
    <div class="headerPage"></div>
    <!--顶部导航 over-->

    <script>
        $(function () {
            /*公共部分
             * 导航栏
             * footer CopyRight
             */
            $(".headerPage").load("HeaderPage.aspx");//引用页眉

            $(".footerPage").load("FooterPage.aspx");//引用页脚
        });
    </script>


    <form id="form1" runat="server">
        <div id="Main">
            <%-- 头部详情--%>
            <div id="top">
                <asp:Repeater ID="Repeater3" runat="server">
                    <HeaderTemplate></HeaderTemplate>
                    <ItemTemplate>
                        <a href="#">
                            <asp:Image ID="initiatorimg" runat="server" ImageUrl='<%#Eval("UserHeadPortrait") %>' CssClass="initiatorimg" /></a>
                        <div id="faqr">
                            <asp:Label ID="description" runat="server" Text='<%#Eval("ProjectName")%>' Font-Size="20pt"></asp:Label>
                            <br />
                            <asp:Label ID="Label2" CssClass="Label2" runat="server" Text="发起人"></asp:Label>
                            <a href="#">
                                <asp:Label ID="initiator" CssClass="initiator" runat="server" Text='<%#Eval("UserName")%>' Font-Bold="True"></asp:Label></a>
                            <asp:Image ID="Image1" runat="server" ImageUrl="../Content/Images/BrowseProjectImg/V.PNG" Height="23px" Width="25px" />
                            <asp:Button ID="Button1" CssClass="Button1" runat="server" Text="联系我" />
                        </div>
                    </ItemTemplate>
                    <FooterTemplate></FooterTemplate>
                </asp:Repeater>
                <div id="contact">
                    <a class="lx" target="_blank" href="https://wx.qq.com/">
                        <img src="../Content/Images/BrowseProjectImg/weixin.png" width="50" /></a>
                    <a class="lx" target="_blank" href="https://qzone.qq.com/">
                        <img src="../Content/Images/BrowseProjectImg/QQ.png" width="50" /></a>
                    <a class="lx" target="_blank" href="https://weibo.com/">
                        <img src="../Content/Images/BrowseProjectImg/weibo.png" width="50" /></a>
                </div>
                <div id="contactf">
                    <label class="wx">微信</label>
                    <label class="qq">QQ</label>
                    <label class="wb">微博</label>
                </div>
            </div>
            <div id="zx"></div>
            <%--众筹详情--%>
            <div id="browse">
                <asp:Repeater ID="Repeater4" runat="server" OnItemCommand="Repeater4_ItemCommand">
                    <HeaderTemplate></HeaderTemplate>
                    <ItemTemplate>
                        <div id="browseimgdiv">
                            <asp:Image ID="browseimg" CssClass="browseimg" runat="server" Height="400px" Width="540px" ImageUrl='<%#Eval("ProjectCover")%>' />
                        </div>
                        <div id="support" class="support">
                            <asp:Label ID="Label1" runat="server" CssClass="Label1" Text='<%#Eval("NumberOfProjectSupport") %>' Font-Size="35pt"></asp:Label>
                            <asp:Label ID="Label3" runat="server" Text="支持数"></asp:Label><br />
                            <asp:Label ID="Label4" runat="server" CssClass="Label1" Text='<%#Eval("AlreadyRaisedMoney") %>' Font-Size="35pt"></asp:Label>
                            <asp:Label ID="Label5" runat="server" Text="已筹款"></asp:Label>
                            <div id="zs">
                                <p id="Label6" style="margin-top:-25px;"><%#Convert.ToDecimal(Eval("mubiaojine")).ToString("F2")%>%</p>
                               <%-- <asp:Button ID="Button2" CssClass="Button2" runat="server" Text="" Enabled="False" />--%>
                                <div class="siteCardRatio">
                                            <!--进度条百分比-->
                                            <div class="siteCardRatioInner" style="width: <%# Convert.ToDecimal(Eval("mubiaojine")) %>%;max-width:100%"></div>
                                        </div>
                                <div id="dbz">
                                    <asp:Label ID="Label7" runat="server" Text="成功结束"></asp:Label>
                                    <asp:Label ID="Label8" CssClass="Label8" runat="server" Text="目标筹资"></asp:Label>
                                    <asp:Label ID="Label9" CssClass="Label9" runat="server" Text='<%#Eval("TargetAmountOfMoney")%>'></asp:Label>
                                </div>
                                <div id="anniu">
                                    <asp:Button ID="Button3" CssClass="Button4" runat="server" Text="立 即 支 持" Font-Bold="True" CommandArgument="" CommandName="SupportProjects"  /><br />
                                    <asp:Button ID="Button4" CssClass="Button4" runat="server" Text="分 享 到 微 信" Font-Bold="True" />
                                </div>
                                <div id="xq">
                                    <span id="cb"><a href="#">出版</a></span>
                                    <span id="dif"><a href="#">北京</a></span>
                                    <span id="fl"><a href="#">博客中国</a>
                                        <a href="#">出版</a>
                                        <a href="#">散文集</a>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                    <FooterTemplate></FooterTemplate>
                </asp:Repeater>

            </div>
            <div id="dh">
                <ul>
                    <li><a href="#">项目详情</a></li>
                    <li><a href="#">项目更新</a></li>
                    <li><a href="#">评论</a></li>
                    <li><a href="#">支持记录</a></li>
                </ul>
            </div>
            <div class="fx">
                <label>分享</label>
                <div class="tup">
                    <a class="lx" target="_blank" href="https://wx.qq.com/">
                        <img src="../Content/Images/BrowseProjectImg/weixin.png" width="50" /></a>
                    <a class="lx" target="_blank" href="https://qzone.qq.com/">
                        <img src="../Content/Images/BrowseProjectImg/QQ.png" width="50" /></a>
                    <a class="lx" target="_blank" href="https://weibo.com/">
                        <img src="../Content/Images/BrowseProjectImg/weibo.png" width="50" /></a>
                </div>

            </div>
            <div id="yqhy">
                <a href="#">邀请朋友一起筹</a>
            </div>

            <div id="wszcd">
                <div id="wszcj">
                    <div id="wszc">
                        <p>无私支持</p>
                        <asp:Label class="ms" ID="Label13" runat="server" Text="15人"></asp:Label>
                        <p class="ms">
                            感谢您的无私奉献，这份支持将助我们的梦想飞的更高更远。
                        </p>
                        <div class="kuang">
                            <asp:Label ID="Label14" runat="server" Text="1"></asp:Label>
                        </div>
                        <div class="kuang">
                            <asp:Label ID="Label15" runat="server" Text="5"></asp:Label>
                        </div>
                        <div class="kuang">
                            <asp:Label ID="Label16" runat="server" Text="10"></asp:Label>
                        </div>
                        <div id="js">
                        </div>
                        <div class="qtkx">
                            <asp:Label ID="Label17" runat="server" Text="其他￥"></asp:Label>
                            <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="157px"></asp:TextBox>
                        </div>
                        <asp:Button ID="Button5" runat="server" Text="立即支持" OnClick="Button5_Click" />
                        <div id="zhix">
                        </div>
                        <div id="zc">
                            <asp:Label ID="Label18" runat="server" Text="￥53"></asp:Label><asp:Label ID="Label19" runat="server" Text="857人"></asp:Label>
                            <br />
                            <br />
                            <br />
                            <asp:Label ID="Label20" runat="server" Text="支持53元，将获得散文集《水灯之城》一本"></asp:Label>
                        </div>
                        <br />
                        <br />
                        <asp:Label ID="Label21" runat="server" Text="预计回报发送时间："></asp:Label>
                        <asp:Label ID="Label22" runat="server" Text="项目成功结束后120天内"></asp:Label>

                    </div>
                    <div id="b_zc">
                        <asp:Button ID="Button6" runat="server" Text="支持此项目" Height="42px" Width="260px" OnClick="Button6_Click" />
                    </div>
                    <div id="lxwm">
                        <asp:Repeater ID="Repeater7" runat="server">
                            <HeaderTemplate></HeaderTemplate>
                            <ItemTemplate>

                                <p style="font-size: 20px;">
                                    联系我们
                                </p>
                                <ul>
                                    <li class="ti">发起人</li>
                                    <li class="nei"><%#Eval("UserName")%></li>
                                </ul>
                                <ul>
                                    <li class="ti">联系地址</li>
                                    <li class="nei"><%#Eval("UserAddress")%></li>
                                </ul>
                                <ul>
                                    <li class="ti">联系方式</li>
                                    <li class="nei"><%#Eval("UserEmail")%></li>
                                </ul>
                                </div>
                        
                            </ItemTemplate>
                            <FooterTemplate></FooterTemplate>
                        </asp:Repeater>
                    </div>
                </div>

                <%--   项目更新--%>
                <div id="xmgxz">
                    <div id="xmgx">
                        <div class="zx">
                        </div>
                        <div class="wz">
                            <p>
                                项目更新
                            </p>
                        </div>
                    </div>
                    <div id="xmgxnr">
                        <asp:Repeater ID="Repeater5" runat="server">
                            <HeaderTemplate></HeaderTemplate>
                            <ItemTemplate>
                                <table>
                                    <tr>
                                        <td class="wenzi"><%#Eval("ProjectUpdateTime")%></td>
                                        <td class="wenzi2">

                                            <asp:Label ID="Label23" class="Label23" runat="server" Text='<%#Eval("UserName")%>'></asp:Label>发起人
                                <br />
                                            <span id="Label24"><%#Eval("ProjectOverview")%></span>
                                            <%--<asp:Label ID="Label24" class="Label24" runat="server" Text="亲们，53元是包邮价哦 请多多支持~~~"></asp:Label>--%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="wenzi"><%#Eval("ProjectUpdateTime")%></td>
                                        <td class="wenzi2">
                                            <asp:Label ID="Label25" class="Label23" runat="server" Text='<%#Eval("UserName")%>'></asp:Label>发起人
                            <br />
                                            <asp:Label ID="Label26" class="Label24" runat="server" Text="透过丛林缝隙，目光到达之处果然是一辆漂亮的马车，车上有华盖，马儿身上佩戴着长串的小铃铛。不过它没有在云端，而是音符般跳跃流淌在湖滨的大道上。那马儿实在是欢畅极了，四只小蹄轻轻扬起，好像四个欢乐的符点。仿佛，那串溪水样悦耳流畅的马铃声，不是因为它奔跑时铜铃的摇动自然发出，而是那四只轻快的小蹄上下舞动演奏出来的。
……
一座城市，需要多久的文化滋养，才能散发出兰一样的幽香，不见花朵，就能知其存在；一群山峦，需要多久的积蓄，才能升腾起一片紫色的烟霞，于烟霞的照耀下，青牛缓缓驼来万世的经典；一片岸柳抚城的水域，需要多久的等待，才能成就一段永恒的文明佳话，无论史册还是民间，都有其光芒闪现……
居住在城市的每一个人，是否都光明纯净，或朝阳初升般心怀希望，或明月朗照般淡泊宁静，身后又是如何反复咏唱的诗行与长歌……
——节选《马铃声声》"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="wenzi"><%#Eval("ProjectUpdateTime")%></td>
                                        <td class="wenzi2">
                                            <asp:Label ID="Label27" class="Label23" runat="server" Text='<%#Eval("UserName")%>'></asp:Label>发起人
                            <br />
                                            <asp:Label ID="Label28" class="Label24" runat="server" Text="精彩内容呈现，不容错过~bilingbilingbiling~"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                            <FooterTemplate></FooterTemplate>
                        </asp:Repeater>
                    </div>
                </div>
                <%-- 关于作者--%>
                <div id="gyzzm">
                    <div id="gyzz">
                        <div class="zx">
                        </div>
                        <div class="wz">
                            <p>
                                项目概述
                            </p>
                        </div>
                    </div>
                    <div id="gyzzner">
                        <asp:Repeater ID="Repeater2" runat="server">
                            <HeaderTemplate></HeaderTemplate>
                            <ItemTemplate>
                                <table>
                                    <tr>
                                        <td class="Label24" style="border: none; width: 675px"><%--梁俪千，字玉蝶， 1970年生，河南省舞钢市人，鲁迅文学院2005高级班学员。多次获各级各类文学奖，有作品被收录散文年选，《散文选刊》、《初中生学习》、《语文报》中考“名篇赏读”曾转载她的作品。出版散文集《两棵树》《书恩书缘》《千花集·卷一》，诗集《春天的名字叫绽放》《我的竖琴》等。中国散文学会会员，中国散文家协会理事，河南省作家协会会员，舞钢市作家协会主席。舞钢市政协委员，平顶山市拔尖人才。现供职于河南省舞钢市文联，2015年开始扶贫，2018年5月担任脱贫攻坚驻村工作队队长。--%>
                                            <%#Eval("ProjectOverview") %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="border: none">
                                            <asp:Image ID="Image2" Width="675px" runat="server" ImageUrl='<%#Eval("ProjectImageUrl")%>' />
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                            <FooterTemplate></FooterTemplate>
                        </asp:Repeater>
                    </div>
                </div>

                <%--项目详情--%>
                <div id="gycbm">
                    <div id="gycb">
                        <div class="zx">
                        </div>
                        <div class="wz">
                            <p>
                                项目详情
                            </p>
                        </div>
                    </div>
                    <div id="gycbnr">
                        <asp:Repeater ID="Repeater8" runat="server">
                            <ItemTemplate>
                                <ul class="Label24">
                            <li><%#Eval("ProjectDetailedPictures") %></li>
                            <li>
                                <asp:Image ID="Image3" Width="675px" runat="server" ImageUrl='<%#Eval("ProjectImageUrl") %>' /></li>
                        </ul>
                            </ItemTemplate>
                        </asp:Repeater>
                        
                    </div>
                </div>
                <div class="fx" style="margin-left: 20px; width: 670px">
                    <label>分享</label>
                    <div class="tup">
                        <a class="lx" target="_blank" href="https://wx.qq.com/">
                            <img src="../Content/Images/BrowseProjectImg/weixin.png" width="50" /></a>
                        <a class="lx" target="_blank" href="https://qzone.qq.com/">
                            <img src="../Content/Images/BrowseProjectImg/QQ.png" width="50" /></a>
                        <a class="lx" target="_blank" href="https://weibo.com/">
                            <img src="../Content/Images/BrowseProjectImg/weibo.png" width="50" /></a>
                    </div>

                </div>
                <%--评论--%>
                <div id="plm" style="margin-top: 30px;">
                    <div id="pl">
                        <div class="zx">
                        </div>
                        <div class="wz">
                            <p>
                                评论
                            </p>
                        </div>
                    </div>
                    <div id="plnr">
                        <div id="wdpl">
                            <asp:Image ID="Image4" Width="54" Height="54" runat="server" ImageUrl="~/Content/Images/yhtx.png" CssClass="Image4" />
                            <div id="dwy">
                                <asp:TextBox ID="TextBox2" runat="server" Columns="10"></asp:TextBox>
                            </div>

                            <br />
                            <asp:Button ID="Button7" runat="server" Text="发布" OnClick="Button7_Click" />
                        </div>

                    </div>
                    <div id="plsjbd">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <HeaderTemplate></HeaderTemplate>
                            <ItemTemplate>
                                <ul>
                                    <li>
                                        <asp:Image ID="Image5" CssClass="Image4" Width="54" runat="server" ImageUrl='<%#Eval("UserHeadPortrait")%>' />
                                    </li>
                                    <li style="font-size: 17px; margin-top: 28px; margin-left: 80px; color: #42bbe9">
                                        <%#Eval("UserName")%>
                                    </li>
                                    <li style="margin-top: 10px; margin-left: 80px">
                                        <%#Eval("Content")%>
                                    </li>
                                    <li style="margin-top: 10px; margin-left: 80px">
                                        <%#Eval("CommentaryDate")%>
                                    </li>
                                    <li style="margin-top: 30px; width: 670px; height: 5px; margin-left: 10px; background-color: #f6f6f6"></li>
                                </ul>

                            </ItemTemplate>
                            <FooterTemplate></FooterTemplate>
                        </asp:Repeater>
                    </div>
                </div>
                <%-- 支持记录--%>

                <%--筹款详情--%>
                <div id="ckxq">
                    <asp:Repeater ID="Repeater6" runat="server">
                        <HeaderTemplate></HeaderTemplate>
                        <ItemTemplate>
                            <%--数额--%>
                            <ul id="se">
                                <li><%#Eval("TargetAmountOfMoney")%></li>
                                <li><%#Eval("NumberOfProjectSupport")%></li>
                                <li><%#Eval("ReleaseStatus")%></li>
                            </ul>
                        </ItemTemplate>
                        <FooterTemplate></FooterTemplate>
                    </asp:Repeater>
                    <br />

                    <%-- 题目--%>
                    <ul id="tm">
                        <li style="margin-left: 40px">已筹款</li>
                        <li style="margin-left: 83px;">支持数</li>
                        <li style="margin-left: 40px">项目状态</li>
                    </ul>
                    <asp:Button ID="Button8" runat="server" Text="立即支持" OnClick="Button8_Click" />
                </div>
                <%--风险说明--%>
                <div id="fxsm">
                    <p>风险说明</p>
                    <ol>
                        <li>众筹不是商品交易。支持者根据自己的判断选择、支持众筹项目，与发起人共同实现梦想并获得发起人承诺的回报，众 筹存在一定风险。</li>
                        <li>众筹网平台只提供平台网络空间、技术服务和支持等中介服务。作为居间方，并不是发起人或支持者中的任何一方，众 筹仅存在于发起人和支持者之间，使用众筹平台产生的法律后果由发起人与支持者自行承担。</li>
                        <li>众筹项目的回报发放、发票开具及其他后续服务事项均由发起人负责。如果发生发起人无法发放回报、延迟发放回报、 不提供回报后续服务等情形，您需要直接和发起人协商解决，众筹网对此不承担任何责任。</li>
                        <li>由于发起人能力和经验不足、市场风险、法律风险等各种因素，众筹可能失败。众筹期限内未达到目标筹资额失败的项 目，您支持的款项会全部原路退还给您；其他情况下，您需要直接和发起人协商解决，众筹网对此不承担任何责任。</li>
                        <li>支持纯抽奖档位、无私支持档位，一旦支付成功将不予退款，众筹失败的除外。</li>
                    </ol>
                </div>
                <div class="fx" style="margin-left: 20px; width: 670px">
                    <label>分享</label>
                    <div class="tup">
                        <a class="lx" target="_blank" href="https://wx.qq.com/">
                            <img src="../Content/Images/BrowseProjectImg/weixin.png" width="50" /></a>
                        <a class="lx" target="_blank" href="https://qzone.qq.com/">
                            <img src="../Content/Images/BrowseProjectImg/QQ.png" width="50" /></a>
                        <a class="lx" target="_blank" href="https://weibo.com/">
                            <img src="../Content/Images/BrowseProjectImg/weibo.png" width="50" /></a>
                    </div>

                </div>
            </div>
    </form>
</body>
</html>
