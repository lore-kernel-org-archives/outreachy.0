X-GM-THRID: 1670193872896
Date: Sat, 21 Feb 2015 02:04:58 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: ksenija.stanojevic@gmail.com
Message-Id: <00d58ff1-b882-4fdf-84dc-17351729a6bf@googlegroups.com>
In-Reply-To: <alpine.DEB.2.02.1502211011420.2020@localhost6.localdomain6>
References: <1424509708-3190-1-git-send-email-ksenija.stanojevic@gmail.com>
 <alpine.DEB.2.02.1502211011420.2020@localhost6.localdomain6>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Replace printk()
 with pr_debug().
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1542_1770002577.1424513098692"
X-Google-Token: EMqwoacFDPvB-No7ank0
X-Google-IP: 77.46.215.254

------=_Part_1542_1770002577.1424513098692
Content-Type: multipart/alternative; 
	boundary="----=_Part_1543_1489833395.1424513098692"

------=_Part_1543_1489833395.1424513098692
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,
It seems to me that only the first out of four functions that use printk 
has a pointer to a device net structure, others don't. Therefore I could 
only implement one netdev_dbg(). 
I couldn't compile the code where all functions use net_dev() function.

 On Saturday, February 21, 2015 at 10:12:15 AM UTC+1, Julia Lawall wrote:
>
> On Sat, 21 Feb 2015, Ksenija Stanojevic wrote: 
>
> > For dynamic debugging pr_debug() metod is preferred over printk(), which 
> > is the raw way to print something. Issue found by checkpatch.pl. 
>
> This is a network driver.  See if it could be possible to use netdev_dbg 
> instead. 
>
> julia 
>
> > 
> > Signed-off-by: Ksenija Stanojevic <ksenija.s...@gmail.com <javascript:>> 
>
> > --- 
> >  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 8 ++++---- 
> >  1 file changed, 4 insertions(+), 4 deletions(-) 
> > 
> > diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c 
> b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c 
> > index 5533221..447af93 100644 
> > --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c 
> > +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c 
> > @@ -66,7 +66,7 @@ void ieee80211_crypt_deinit_handler(unsigned long 
> data) 
> >          spin_lock_irqsave(&ieee->lock, flags); 
> >          ieee80211_crypt_deinit_entries(ieee, 0); 
> >          if (!list_empty(&ieee->crypt_deinit_list)) { 
> > -                printk(KERN_DEBUG "%s: entries remaining in delayed 
> crypt " 
> > +                pr_debug("%s: entries remaining in delayed crypt " 
> >                         "deletion list\n", ieee->dev->name); 
> >                  ieee->crypt_deinit_timer.expires = jiffies + HZ; 
> >                  add_timer(&ieee->crypt_deinit_timer); 
> > @@ -118,7 +118,7 @@ int ieee80211_register_crypto_ops(struct 
> ieee80211_crypto_ops *ops) 
> >          list_add(&alg->list, &hcrypt->algs); 
> >          spin_unlock_irqrestore(&hcrypt->lock, flags); 
> >   
> > -        printk(KERN_DEBUG "ieee80211_crypt: registered algorithm 
> '%s'\n", 
> > +        pr_debug("ieee80211_crypt: registered algorithm '%s'\n", 
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
> > +                pr_debug("ieee80211_crypt: unregistered algorithm " 
> >                         "'%s'\n", ops->name); 
> >                  kfree(del_alg); 
> >          } 
> > @@ -232,7 +232,7 @@ void __exit ieee80211_crypto_deinit(void) 
> >                  struct ieee80211_crypto_alg *alg = 
> >                          (struct ieee80211_crypto_alg *) ptr; 
> >                  list_del(ptr); 
> > -                printk(KERN_DEBUG "ieee80211_crypt: unregistered 
> algorithm " 
> > +                pr_debug("ieee80211_crypt: unregistered algorithm " 
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
> https://groups.google.com/d/msgid/outreachy-kernel/1424509708-3190-1-git-send-email-ksenija.stanojevic%40gmail.com. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_1543_1489833395.1424513098692
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr">Hi,<br>It seems to me that only the first out of four functions that use printk has a pointer to a device net structure, others don't. Therefore I could only implement one netdev_dbg(). <br>I couldn't compile the code where all functions use net_dev() function.<br><br>&nbsp;On Saturday, February 21, 2015 at 10:12:15 AM UTC+1, Julia Lawall wrote:<blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Sat, 21 Feb 2015, Ksenija Stanojevic wrote:
<br>
<br>&gt; For dynamic debugging pr_debug() metod is preferred over printk(), which
<br>&gt; is the raw way to print something. Issue found by <a href="http://checkpatch.pl" target="_blank" rel="nofollow">checkpatch.pl</a>.
<br>
<br>This is a network driver. &nbsp;See if it could be possible to use netdev_dbg 
<br>instead.
<br>
<br>julia
<br>
<br>&gt; 
<br>&gt; Signed-off-by: Ksenija Stanojevic &lt;<a href="javascript:" target="_blank" gdf-obfuscated-mailto="qFBczmssYxgJ" rel="nofollow">ksenija.s...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; &nbsp;drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_crypt.c | 8 ++++----
<br>&gt; &nbsp;1 file changed, 4 insertions(+), 4 deletions(-)
<br>&gt; 
<br>&gt; diff --git a/drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_crypt.c
<br>&gt; index 5533221..447af93 100644
<br>&gt; --- a/drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_crypt.c
<br>&gt; +++ b/drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_crypt.c
<br>&gt; @@ -66,7 +66,7 @@ void ieee80211_crypt_deinit_<wbr>handler(unsigned long data)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;spin_lock_irqsave(&amp;<wbr>ieee-&gt;lock, flags);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee80211_crypt_<wbr>deinit_entries(ieee, 0);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (!list_empty(&amp;ieee-&gt;crypt_<wbr>deinit_list)) {
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printk(KERN_<wbr>DEBUG "%s: entries remaining in delayed crypt "
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pr_debug("%s: entries remaining in delayed crypt "
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; "deletion list\n", ieee-&gt;dev-&gt;name);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;crypt_<wbr>deinit_timer.expires = jiffies + HZ;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;add_timer(&amp;<wbr>ieee-&gt;crypt_deinit_timer);
<br>&gt; @@ -118,7 +118,7 @@ int ieee80211_register_crypto_ops(<wbr>struct ieee80211_crypto_ops *ops)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;list_add(&amp;alg-&gt;list, &amp;hcrypt-&gt;algs);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;spin_unlock_<wbr>irqrestore(&amp;hcrypt-&gt;lock, flags);
<br>&gt; &nbsp;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printk(KERN_DEBUG "ieee80211_crypt: registered algorithm '%s'\n",
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pr_debug("ieee80211_<wbr>crypt: registered algorithm '%s'\n",
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; ops-&gt;name);
<br>&gt; &nbsp;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return 0;
<br>&gt; @@ -146,7 +146,7 @@ int ieee80211_unregister_crypto_<wbr>ops(struct ieee80211_crypto_ops *ops)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;spin_unlock_<wbr>irqrestore(&amp;hcrypt-&gt;lock, flags);
<br>&gt; &nbsp;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (del_alg) {
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printk(KERN_<wbr>DEBUG "ieee80211_crypt: unregistered algorithm "
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pr_debug("<wbr>ieee80211_crypt: unregistered algorithm "
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; "'%s'\n", ops-&gt;name);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;kfree(del_<wbr>alg);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; @@ -232,7 +232,7 @@ void __exit ieee80211_crypto_deinit(void)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;struct ieee80211_crypto_alg *alg =
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(<wbr>struct ieee80211_crypto_alg *) ptr;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;list_del(ptr)<wbr>;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printk(KERN_<wbr>DEBUG "ieee80211_crypt: unregistered algorithm "
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pr_debug("<wbr>ieee80211_crypt: unregistered algorithm "
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; "'%s' (deinit)\n", alg-&gt;ops-&gt;name);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;kfree(alg);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; -- 
<br>&gt; 1.9.1
<br>&gt; 
<br>&gt; -- 
<br>&gt; You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, send an email to <a href="javascript:" target="_blank" gdf-obfuscated-mailto="qFBczmssYxgJ" rel="nofollow">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href="javascript:" target="_blank" gdf-obfuscated-mailto="qFBczmssYxgJ" rel="nofollow">outreach...@googlegroups.<wbr>com</a>.
<br>&gt; To view this discussion on the web visit <a href="https://groups.google.com/d/msgid/outreachy-kernel/1424509708-3190-1-git-send-email-ksenija.stanojevic%40gmail.com" target="_blank" rel="nofollow">https://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>1424509708-3190-1-git-send-<wbr>email-ksenija.stanojevic%<wbr>40gmail.com</a>.
<br>&gt; For more options, visit <a href="https://groups.google.com/d/optout" target="_blank" rel="nofollow">https://groups.google.com/d/<wbr>optout</a>.
<br>&gt; 
<br></blockquote></div>
------=_Part_1543_1489833395.1424513098692--

------=_Part_1542_1770002577.1424513098692--

