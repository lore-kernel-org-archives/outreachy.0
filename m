X-GM-THRID: 1969702830080
Date: Sat, 21 Feb 2015 10:15:00 -0800 (PST)
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: navyasri.tech@gmail.com
Message-Id: <d408a19a-e57f-46b9-9a81-cc78e6c7de1e@googlegroups.com>
In-Reply-To: <alpine.DEB.2.10.1502211850160.2480@hadrien>
References: <cover.1424538520.git.navyasri.tech@gmail.com> <4025a37966c3b0a3a3e210fad8740f0673ab5a92.1424538520.git.navyasri.tech@gmail.com>
 <alpine.DEB.2.10.1502211850160.2480@hadrien>
Subject: Re: [Outreachy kernel] [PATCH 1/4] staging: rtl8192u: Convert from
 printk into netdev_dbg or pr_dbg
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_26_1413753408.1424542500514"
X-Google-Token: EKSWo6cFQQBKF5FMcbg0
X-Google-IP: 111.93.6.70

------=_Part_26_1413753408.1424542500514
Content-Type: multipart/alternative; 
	boundary="----=_Part_27_1194457848.1424542500514"

------=_Part_27_1194457848.1424542500514
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Saturday, February 21, 2015 at 11:21:21 PM UTC+5:30, Julia Lawall wrote:
>
> On Sat, 21 Feb 2015, Navya Sri Nizamkari wrote: 
>
> > Convert printk(KERN_DEBUG.. ) to netdev_dbg if its a network driver 
> > and pr_dbg if its not a driver, to fix the checkpatch.pl warning: 
>
> This message is rather confusing.  The patch affects only one file, so it 
> either is a network driver or it is not.  The issue is that some functions 
> don't have the right set of arguments that allow you to call the netdev 
> functions. 
>
> julia 
>
> I made the change and sent in v2 of that patch.Should I send the whole 
patchset again ?

Navya

> WARNING: Prefer netdev_dbg(netdev, ... then dev_dbg(dev, ... then 
> > pr_debug(...  to printk(KERN_DEBUG ... 
> > 
> > Signed-off-by: Navya Sri Nizamkari <navyas...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 10 +++++----- 
> >  1 file changed, 5 insertions(+), 5 deletions(-) 
> > 
> > diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c 
> b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c 
> > index 5533221..e517e81 100644 
> > --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c 
> > +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c 
> > @@ -66,8 +66,8 @@ void ieee80211_crypt_deinit_handler(unsigned long 
> data) 
> >          spin_lock_irqsave(&ieee->lock, flags); 
> >          ieee80211_crypt_deinit_entries(ieee, 0); 
> >          if (!list_empty(&ieee->crypt_deinit_list)) { 
> > -                printk(KERN_DEBUG "%s: entries remaining in delayed 
> crypt " 
> > -                       "deletion list\n", ieee->dev->name); 
> > +                netdev_dbg(ieee->dev, "entries remaining in delayed 
> crypt " 
> > +                       "deletion list\n"); 
> >                  ieee->crypt_deinit_timer.expires = jiffies + HZ; 
> >                  add_timer(&ieee->crypt_deinit_timer); 
> >          } 
> > @@ -118,7 +118,7 @@ int ieee80211_register_crypto_ops(struct 
> ieee80211_crypto_ops *ops) 
> >          list_add(&alg->list, &hcrypt->algs); 
> >          spin_unlock_irqrestore(&hcrypt->lock, flags); 
> > 
> > -        printk(KERN_DEBUG "ieee80211_crypt: registered algorithm 
> '%s'\n", 
> > +        pr_dbg("ieee80211_crypt: registered algorithm '%s'\n", 
> >                 ops->name); 
> > 
> >          return 0; 
> > @@ -146,7 +146,7 @@ int ieee80211_unregister_crypto_ops(struct 
> ieee80211_crypto_ops *ops) 
> >          spin_unlock_irqrestore(&hcrypt->lock, flags); 
> > 
> >          if (del_alg) { 
> > -                printk(KERN_DEBUG "ieee80211_crypt: unregistered 
> algorithm " 
> > +                pr_dbg("ieee80211_crypt: unregistered algorithm " 
> >                         "'%s'\n", ops->name); 
> >                  kfree(del_alg); 
> >          } 
> > @@ -232,7 +232,7 @@ void __exit ieee80211_crypto_deinit(void) 
> >                  struct ieee80211_crypto_alg *alg = 
> >                          (struct ieee80211_crypto_alg *) ptr; 
> >                  list_del(ptr); 
> > -                printk(KERN_DEBUG "ieee80211_crypt: unregistered 
> algorithm " 
> > +                pr_dbg("ieee80211_crypt: unregistered algorithm " 
> >                         "'%s' (deinit)\n", alg->ops->name); 
> >                  kfree(alg); 
> >          } 
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
> https://groups.google.com/d/msgid/outreachy-kernel/4025a37966c3b0a3a3e210fad8740f0673ab5a92.1424538520.git.navyasri.tech%40gmail.com. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_27_1194457848.1424542500514
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr"><br><br>On Saturday, February 21, 2015 at 11:21:21 PM UTC+5:30, Julia Lawall wrote:<blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Sat, 21 Feb 2015, Navya Sri Nizamkari wrote:
<br>
<br>&gt; Convert printk(KERN_DEBUG.. ) to netdev_dbg if its a network driver
<br>&gt; and pr_dbg if its not a driver, to fix the <a href="http://checkpatch.pl" target="_blank" rel="nofollow">checkpatch.pl</a> warning:
<br>
<br>This message is rather confusing. &nbsp;The patch affects only one file, so it
<br>either is a network driver or it is not. &nbsp;The issue is that some functions
<br>don't have the right set of arguments that allow you to call the netdev
<br>functions.
<br>
<br>julia
<br>
<br></blockquote><div>I made the change and sent in v2 of that patch.Should I send the whole patchset again ?<br><br>Navya<br><br></div><blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">&gt; WARNING: Prefer netdev_dbg(netdev, ... then dev_dbg(dev, ... then
<br>&gt; pr_debug(... &nbsp;to printk(KERN_DEBUG ...
<br>&gt;
<br>&gt; Signed-off-by: Navya Sri Nizamkari &lt;<a href="javascript:" target="_blank" gdf-obfuscated-mailto="AffxQRh_4YUJ" rel="nofollow">navyas...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; &nbsp;drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_crypt.c | 10 +++++-----
<br>&gt; &nbsp;1 file changed, 5 insertions(+), 5 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_crypt.c
<br>&gt; index 5533221..e517e81 100644
<br>&gt; --- a/drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_crypt.c
<br>&gt; +++ b/drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_crypt.c
<br>&gt; @@ -66,8 +66,8 @@ void ieee80211_crypt_deinit_<wbr>handler(unsigned long data)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;spin_lock_irqsave(&amp;<wbr>ieee-&gt;lock, flags);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee80211_crypt_<wbr>deinit_entries(ieee, 0);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (!list_empty(&amp;ieee-&gt;crypt_<wbr>deinit_list)) {
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printk(KERN_<wbr>DEBUG "%s: entries remaining in delayed crypt "
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; "deletion list\n", ieee-&gt;dev-&gt;name);
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;netdev_dbg(<wbr>ieee-&gt;dev, "entries remaining in delayed crypt "
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; "deletion list\n");
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;crypt_<wbr>deinit_timer.expires = jiffies + HZ;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;add_timer(&amp;<wbr>ieee-&gt;crypt_deinit_timer);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; @@ -118,7 +118,7 @@ int ieee80211_register_crypto_ops(<wbr>struct ieee80211_crypto_ops *ops)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;list_add(&amp;alg-&gt;list, &amp;hcrypt-&gt;algs);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;spin_unlock_<wbr>irqrestore(&amp;hcrypt-&gt;lock, flags);
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printk(KERN_DEBUG "ieee80211_crypt: registered algorithm '%s'\n",
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pr_dbg("ieee80211_<wbr>crypt: registered algorithm '%s'\n",
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; ops-&gt;name);
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return 0;
<br>&gt; @@ -146,7 +146,7 @@ int ieee80211_unregister_crypto_<wbr>ops(struct ieee80211_crypto_ops *ops)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;spin_unlock_<wbr>irqrestore(&amp;hcrypt-&gt;lock, flags);
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (del_alg) {
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printk(KERN_<wbr>DEBUG "ieee80211_crypt: unregistered algorithm "
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pr_dbg("<wbr>ieee80211_crypt: unregistered algorithm "
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; "'%s'\n", ops-&gt;name);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;kfree(del_<wbr>alg);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; @@ -232,7 +232,7 @@ void __exit ieee80211_crypto_deinit(void)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;struct ieee80211_crypto_alg *alg =
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(<wbr>struct ieee80211_crypto_alg *) ptr;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;list_del(ptr)<wbr>;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printk(KERN_<wbr>DEBUG "ieee80211_crypt: unregistered algorithm "
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pr_dbg("<wbr>ieee80211_crypt: unregistered algorithm "
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; "'%s' (deinit)\n", alg-&gt;ops-&gt;name);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;kfree(alg);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; --
<br>&gt; 1.9.1
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, send an email to <a href="javascript:" target="_blank" gdf-obfuscated-mailto="AffxQRh_4YUJ" rel="nofollow">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href="javascript:" target="_blank" gdf-obfuscated-mailto="AffxQRh_4YUJ" rel="nofollow">outreach...@googlegroups.<wbr>com</a>.
<br>&gt; To view this discussion on the web visit <a href="https://groups.google.com/d/msgid/outreachy-kernel/4025a37966c3b0a3a3e210fad8740f0673ab5a92.1424538520.git.navyasri.tech%40gmail.com" target="_blank" rel="nofollow">https://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>4025a37966c3b0a3a3e210fad8740f<wbr>0673ab5a92.1424538520.git.<wbr>navyasri.tech%40gmail.com</a>.
<br>&gt; For more options, visit <a href="https://groups.google.com/d/optout" target="_blank" rel="nofollow">https://groups.google.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_27_1194457848.1424542500514--

------=_Part_26_1413753408.1424542500514--

