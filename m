X-GM-THRID: 5240177819648
Date: Wed, 4 Mar 2015 00:30:07 -0800 (PST)
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: navyasri.tech@gmail.com
Message-Id: <8f8344f2-dc88-4816-b7bc-62536fc20f2d@googlegroups.com>
In-Reply-To: <alpine.DEB.2.10.1503011640130.2545@hadrien>
References: <20150228215501.GA5201@localhost>
 <alpine.DEB.2.10.1503011640130.2545@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: Remove if
 conditions.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3119_96292774.1425457807482"
X-Google-Token: EI-F26cFKtyxZ6ZkexA0
X-Google-IP: 61.16.142.166

------=_Part_3119_96292774.1425457807482
Content-Type: multipart/alternative; 
	boundary="----=_Part_3120_1337466427.1425457807482"

------=_Part_3120_1337466427.1425457807482
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Monday, March 2, 2015 at 4:11:11 AM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Sun, 1 Mar 2015, Navya Sri Nizamkari wrote: 
>
> > This patch removes if conditions with no exececutable 
> > statements in the bodies of those ifs and also no 
> > variable assignments in the if conditional checks. 
> > 
> > Signed-off-by: Navya Sri Nizamkari <navyas...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/rtl8192e/rtl8192e/rtl_wx.c | 12 ------------ 
> >  1 file changed, 12 deletions(-) 
> > 
> > diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c 
> b/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c 
> > index df0323f..c233a1c 100644 
> > --- a/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c 
> > +++ b/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c 
> > @@ -572,10 +572,6 @@ static int r8192_wx_set_essid(struct net_device 
> *dev, 
> >          struct r8192_priv *priv = rtllib_priv(dev); 
> >          int ret; 
> > 
> > -        if ((rtllib_act_scanning(priv->rtllib, false)) && 
> > -            !(priv->rtllib->softmac_features & IEEE_SOFTMAC_SCAN)) { 
> > -                ;        /* TODO - get rid of if */ 
> > -        } 
>
> I'm not sure that this is correct.  Can the call to rtllib_act_scanning 
> have any side effects?  If not, you should mention that explicitly in teh 
> commit message. 
>
> julia 
>

Hi,

No, the call to rtllib_act_scanning has no side effects. 

The function definition :

 bool <http://lxr.free-electrons.com/ident?i=bool> rtllib_act_scanning <http://lxr.free-electrons.com/ident?i=rtllib_act_scanning>(struct rtllib_device <http://lxr.free-electrons.com/ident?i=rtllib_device> *ieee, bool <http://lxr.free-electrons.com/ident?i=bool> sync_scan)
 {
         if (ieee->softmac_features & IEEE_SOFTMAC_SCAN <http://lxr.free-electrons.com/ident?i=IEEE_SOFTMAC_SCAN>) {
                 if (sync_scan)
                         return ieee->be_scan_inprogress;
                 else
                         return ieee->actscanning || ieee->be_scan_inprogress;
         } else {
                 return test_bit <http://lxr.free-electrons.com/ident?i=test_bit>(STATUS_SCANNING <http://lxr.free-electrons.com/ident?i=STATUS_SCANNING>, &ieee->status <http://lxr.free-electrons.com/ident?i=status>);
         }
 }


It doesn't make any other changes. 

Thanks,
Navya
 

>
> >          if (priv->bHwRadioOff == true) { 
> >                  printk(KERN_INFO "=========>%s():hw radio off,or Rf 
> state is " 
> >                         "eRfOff, return\n", __func__); 
> > @@ -708,11 +704,6 @@ static int r8192_wx_set_wap(struct net_device *dev, 
> >          int ret; 
> >          struct r8192_priv *priv = rtllib_priv(dev); 
> > 
> > -        if ((rtllib_act_scanning(priv->rtllib, false)) && 
> > -            !(priv->rtllib->softmac_features & IEEE_SOFTMAC_SCAN)) { 
> > -                ;        /* TODO - get rid of if */ 
> > -        } 
> > - 
> >          if (priv->bHwRadioOff == true) 
> >                  return 0; 
> > 
> > @@ -763,9 +754,6 @@ static int r8192_wx_set_enc(struct net_device *dev, 
> >                               {0x00, 0x00, 0x00, 0x00, 0x00, 0x03} }; 
> >          int i; 
> > 
> > -        if ((rtllib_act_scanning(priv->rtllib, false)) && 
> > -           !(priv->rtllib->softmac_features & IEEE_SOFTMAC_SCAN)) 
> > -                ;        /* TODO - get rid of if */ 
> >          if (priv->bHwRadioOff == true) 
> >                  return 0; 
> > 
> > -- 
> > 1.9.1 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20150228215501.GA5201%40localhost. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_3120_1337466427.1425457807482
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr"><br><br>On Monday, March 2, 2015 at 4:11:11 AM UTC+5:30, Julia Lawall wrote:<blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Sun, 1 Mar 2015, Navya Sri Nizamkari wrote:
<br>
<br>&gt; This patch removes if conditions with no exececutable
<br>&gt; statements in the bodies of those ifs and also no
<br>&gt; variable assignments in the if conditional checks.
<br>&gt;
<br>&gt; Signed-off-by: Navya Sri Nizamkari &lt;<a href="javascript:" target="_blank" gdf-obfuscated-mailto="KUJB2WMyOMgJ" rel="nofollow">navyas...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; &nbsp;drivers/staging/rtl8192e/<wbr>rtl8192e/rtl_wx.c | 12 ------------
<br>&gt; &nbsp;1 file changed, 12 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/rtl8192e/<wbr>rtl8192e/rtl_wx.c b/drivers/staging/rtl8192e/<wbr>rtl8192e/rtl_wx.c
<br>&gt; index df0323f..c233a1c 100644
<br>&gt; --- a/drivers/staging/rtl8192e/<wbr>rtl8192e/rtl_wx.c
<br>&gt; +++ b/drivers/staging/rtl8192e/<wbr>rtl8192e/rtl_wx.c
<br>&gt; @@ -572,10 +572,6 @@ static int r8192_wx_set_essid(struct net_device *dev,
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;struct r8192_priv *priv = rtllib_priv(dev);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int ret;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if ((rtllib_act_scanning(priv-&gt;<wbr>rtllib, false)) &amp;&amp;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;!(priv-&gt;rtllib-&gt;softmac_<wbr>features &amp; IEEE_SOFTMAC_SCAN)) {
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* TODO - get rid of if */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>
<br>I'm not sure that this is correct. &nbsp;Can the call to rtllib_act_scanning
<br>have any side effects? &nbsp;If not, you should mention that explicitly in teh
<br>commit message.
<br>
<br>julia
<br></blockquote><div><br>Hi,<br><br>No, the call to rtllib_act_scanning has no side effects. <br><br>The function definition :<br><br><pre> <a href="http://lxr.free-electrons.com/ident?i=bool">bool</a> <a href="http://lxr.free-electrons.com/ident?i=rtllib_act_scanning">rtllib_act_scanning</a>(struct <a href="http://lxr.free-electrons.com/ident?i=rtllib_device">rtllib_device</a> *ieee, <a href="http://lxr.free-electrons.com/ident?i=bool">bool</a> sync_scan)
 {
         if (ieee-&gt;softmac_features &amp; <a href="http://lxr.free-electrons.com/ident?i=IEEE_SOFTMAC_SCAN">IEEE_SOFTMAC_SCAN</a>) {
                 if (sync_scan)
                         return ieee-&gt;be_scan_inprogress;
                 else
                         return ieee-&gt;actscanning || ieee-&gt;be_scan_inprogress;
         } else {
                 return <a href="http://lxr.free-electrons.com/ident?i=test_bit">test_bit</a>(<a href="http://lxr.free-electrons.com/ident?i=STATUS_SCANNING">STATUS_SCANNING</a>, &amp;ieee-&gt;<a href="http://lxr.free-electrons.com/ident?i=status">status</a>);
         }
 }</pre><br>It doesn't make any other changes. <br><br>Thanks,<br>Navya<br>&nbsp;</div><blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (priv-&gt;bHwRadioOff == true) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printk(KERN_<wbr>INFO "=========&gt;%s():hw radio off,or Rf state is "
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; "eRfOff, return\n", __func__);
<br>&gt; @@ -708,11 +704,6 @@ static int r8192_wx_set_wap(struct net_device *dev,
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int ret;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;struct r8192_priv *priv = rtllib_priv(dev);
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if ((rtllib_act_scanning(priv-&gt;<wbr>rtllib, false)) &amp;&amp;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;!(priv-&gt;rtllib-&gt;softmac_<wbr>features &amp; IEEE_SOFTMAC_SCAN)) {
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* TODO - get rid of if */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; -
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (priv-&gt;bHwRadioOff == true)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return 0;
<br>&gt;
<br>&gt; @@ -763,9 +754,6 @@ static int r8192_wx_set_enc(struct net_device *dev,
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; {0x00, 0x00, 0x00, 0x00, 0x00, 0x03} };
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int i;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if ((rtllib_act_scanning(priv-&gt;<wbr>rtllib, false)) &amp;&amp;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; !(priv-&gt;rtllib-&gt;softmac_<wbr>features &amp; IEEE_SOFTMAC_SCAN))
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* TODO - get rid of if */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (priv-&gt;bHwRadioOff == true)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return 0;
<br>&gt;
<br>&gt; --
<br>&gt; 1.9.1
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, send an email to <a href="javascript:" target="_blank" gdf-obfuscated-mailto="KUJB2WMyOMgJ" rel="nofollow">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href="javascript:" target="_blank" gdf-obfuscated-mailto="KUJB2WMyOMgJ" rel="nofollow">outreach...@googlegroups.<wbr>com</a>.
<br>&gt; To view this discussion on the web visit <a href="https://groups.google.com/d/msgid/outreachy-kernel/20150228215501.GA5201%40localhost" target="_blank" rel="nofollow">https://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>20150228215501.GA5201%<wbr>40localhost</a>.
<br>&gt; For more options, visit <a href="https://groups.google.com/d/optout" target="_blank" rel="nofollow">https://groups.google.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_3120_1337466427.1425457807482--

------=_Part_3119_96292774.1425457807482--

