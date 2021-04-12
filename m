X-GM-THRID: 6950201228210995200
Date: Mon, 12 Apr 2021 04:25:19 -0700 (PDT)
From: PEGGY TAWAH <tawahpeggy98@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <3c032481-f359-45c7-947b-54b39e989822n@googlegroups.com>
In-Reply-To: <alpine.DEB.2.22.394.2104121208530.6734@hadrien>
References: <20210411204933.GA3524@peggy-Lenovo-V130-15IKB>
 <alpine.DEB.2.22.394.2104121208530.6734@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] Staging: Remove line to fix
 checkpatch error
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3238_1734175816.1618226719437"

------=_Part_3238_1734175816.1618226719437
Content-Type: multipart/alternative; 
	boundary="----=_Part_3239_2032391266.1618226719437"

------=_Part_3239_2032391266.1618226719437
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Thank you Julia for your timely feedback and intervention. i think the 
patch got mixed up after i did git add <name of file modified> now i 
understand it was a wrong move.  will fix that right away and submit.
Thanks again.
Tawah Peggy

On Monday, April 12, 2021 at 6:10:56 AM UTC-4 Julia....@inria.fr wrote:

>
>
> On Sun, 11 Apr 2021, tawahpeggy wrote:
>
> > remove one empty line.CHECK: Please don't use multiple blank lines
>
> Did something go wrong with the patch generation? You say that you are
> removing one line, but the diff information looks like you are adding a
> file. Normally a patch has only the changed lines and a few lines before
> and after.
>
> > Signed-off-by: tawahpeggy <tawahp...@gmail.com>
>
> You need to put your real name when contributing to the Linux kernel.
>
> For example, I would put:
>
> Julia Lawall <julia....@inria.fr>
>
> julia
>
> >
> > ---
> > drivers/staging/comedi/comedi_pcmcia.mod.c | 1 -
> > 1 file changed, 0 insertion(+), 1 deletion(-)
> > create mode 100644 drivers/staging/comedi/comedi_pcmcia.mod.c
> >
> > diff --git a/drivers/staging/comedi/comedi_pcmcia.mod.c 
> b/drivers/staging/comedi/comedi_pcmcia.mod.c
> > index 0904b8765afs96..3984db1a39c8
> > --- /dev/null
> > +++ b/drivers/staging/comedi/comedi_pcmcia.mod.c
> > @@ -0,0 +1,31 @@
> > #include <linux/module.h>
> > #define INCLUDE_VERMAGIC
> > #include <linux/build-salt.h>
> > #include <linux/vermagic.h>
> > #include <linux/compiler.h>
> >
> > BUILD_SALT;
> >
> > MODULE_INFO(vermagic, VERMAGIC_STRING);
> > MODULE_INFO(name, KBUILD_MODNAME);
> >
> > __visible struct module __this_module
> > __section(".gnu.linkonce.this_module") = {
> > .name = KBUILD_MODNAME,
> > .init = init_module,
> > #ifdef CONFIG_MODULE_UNLOAD
> > .exit = cleanup_module,
> > #endif
> > .arch = MODULE_ARCH_INIT,
> > };
> >
> > #ifdef CONFIG_RETPOLINE
> > MODULE_INFO(retpoline, "Y");
> > #endif
> >
> > MODULE_INFO(staging, "Y");
> >
> > MODULE_INFO(depends, "pcmcia,comedi");
> >
> > -
> > MODULE_INFO(srcversion, "ED971F2E01020DFA2B04486");
> > --
> > 2.17.1
> > h-Hartman <gre...@linuxfoundation.org>
> >
> > --
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com.
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20210411204933.GA3524%40peggy-Lenovo-V130-15IKB
> .
> >
>

------=_Part_3239_2032391266.1618226719437
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

Thank you Julia for your timely feedback and intervention. i think the patch got mixed up after i did git add &lt;name of file modified&gt; now i understand it was a wrong move.&nbsp; will fix that right away and submit.<div>Thanks again.</div><div>Tawah Peggy<br><br></div><div class="gmail_quote"><div dir="auto" class="gmail_attr">On Monday, April 12, 2021 at 6:10:56 AM UTC-4 Julia....@inria.fr wrote:<br/></div><blockquote class="gmail_quote" style="margin: 0 0 0 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;"><br><br>On Sun, 11 Apr 2021, tawahpeggy wrote:<br><br>&gt; remove one empty line.CHECK: Please don&#39;t use multiple blank lines<br><br>Did something go wrong with the patch generation?  You say that you are<br>removing one line, but the diff information looks like you are adding a<br>file.  Normally a patch has only the changed lines and a few lines before<br>and after.<br><br>&gt; Signed-off-by: tawahpeggy &lt;<a href data-email-masked rel="nofollow">tawahp...@gmail.com</a>&gt;<br><br>You need to put your real name when contributing to the Linux kernel.<br><br>For example, I would put:<br><br>Julia Lawall &lt;<a href data-email-masked rel="nofollow">julia....@inria.fr</a>&gt;<br><br>julia<br><br>&gt;<br>&gt; ---<br>&gt;  drivers/staging/comedi/comedi_pcmcia.mod.c | 1 -<br>&gt;  1 file changed, 0 insertion(+), 1 deletion(-)<br>&gt;  create mode 100644 drivers/staging/comedi/comedi_pcmcia.mod.c<br>&gt;<br>&gt; diff --git a/drivers/staging/comedi/comedi_pcmcia.mod.c b/drivers/staging/comedi/comedi_pcmcia.mod.c<br>&gt; index 0904b8765afs96..3984db1a39c8<br>&gt; --- /dev/null<br>&gt; +++ b/drivers/staging/comedi/comedi_pcmcia.mod.c<br>&gt; @@ -0,0 +1,31 @@<br>&gt; #include &lt;linux/module.h&gt;<br>&gt; #define INCLUDE_VERMAGIC<br>&gt; #include &lt;linux/build-salt.h&gt;<br>&gt; #include &lt;linux/vermagic.h&gt;<br>&gt; #include &lt;linux/compiler.h&gt;<br>&gt;<br>&gt; BUILD_SALT;<br>&gt;<br>&gt; MODULE_INFO(vermagic, VERMAGIC_STRING);<br>&gt; MODULE_INFO(name, KBUILD_MODNAME);<br>&gt;<br>&gt; __visible struct module __this_module<br>&gt; __section(&quot;.gnu.linkonce.this_module&quot;) = {<br>&gt; 	.name = KBUILD_MODNAME,<br>&gt; 	.init = init_module,<br>&gt; #ifdef CONFIG_MODULE_UNLOAD<br>&gt; 	.exit = cleanup_module,<br>&gt; #endif<br>&gt; 	.arch = MODULE_ARCH_INIT,<br>&gt; };<br>&gt;<br>&gt; #ifdef CONFIG_RETPOLINE<br>&gt; MODULE_INFO(retpoline, &quot;Y&quot;);<br>&gt; #endif<br>&gt;<br>&gt; MODULE_INFO(staging, &quot;Y&quot;);<br>&gt;<br>&gt; MODULE_INFO(depends, &quot;pcmcia,comedi&quot;);<br>&gt;<br>&gt; -<br>&gt; MODULE_INFO(srcversion, &quot;ED971F2E01020DFA2B04486&quot;);<br>&gt; --<br>&gt; 2.17.1<br>&gt; h-Hartman &lt;<a href data-email-masked rel="nofollow">gre...@linuxfoundation.org</a>&gt;<br>&gt;<br>&gt; --<br>&gt; You received this message because you are subscribed to the Google Groups &quot;outreachy-kernel&quot; group.<br>&gt; To unsubscribe from this group and stop receiving emails from it, send an email to <a href data-email-masked rel="nofollow">outreachy-kern...@googlegroups.com</a>.<br>&gt; To view this discussion on the web visit <a href="https://groups.google.com/d/msgid/outreachy-kernel/20210411204933.GA3524%40peggy-Lenovo-V130-15IKB" target="_blank" rel="nofollow" data-saferedirecturl="https://www.google.com/url?hl=en&amp;q=https://groups.google.com/d/msgid/outreachy-kernel/20210411204933.GA3524%2540peggy-Lenovo-V130-15IKB&amp;source=gmail&amp;ust=1618311889402000&amp;usg=AFQjCNFQWpQKaoRsA_iZq-YhhLLGnDWLsw">https://groups.google.com/d/msgid/outreachy-kernel/20210411204933.GA3524%40peggy-Lenovo-V130-15IKB</a>.<br>&gt;<br></blockquote></div>
------=_Part_3239_2032391266.1618226719437--

------=_Part_3238_1734175816.1618226719437--

