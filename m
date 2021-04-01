X-GM-THRID: 6945672657015668736
Date: Wed, 31 Mar 2021 22:53:26 -0700 (PDT)
From: Edith Puclla <edithpuclla20@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <6f63edb0-7bf7-442e-8027-04df9e7d6e58n@googlegroups.com>
In-Reply-To: <20210331044853.GU351017@casper.infradead.org>
References: <7735e765-8b0e-415b-9630-ffa2b4f74a91n@googlegroups.com>
 <20210331044853.GU351017@casper.infradead.org>
Subject: Re: [Outreachy kernel] Modifying a driver on native Linux - which
 file should I modify?
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_580_1836542276.1617256406994"

------=_Part_580_1836542276.1617256406994
Content-Type: multipart/alternative; 
	boundary="----=_Part_581_1542677296.1617256406994"

------=_Part_581_1542677296.1617256406994
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thank you, what I understand is that I could modify xhci.c for example,=20
adding a  printk, the idea is to add a change, compile the kernel and then=
=20
reset the changes. Is what I understand form the tutorial, let me know if I=
=20
am wrong.
El martes, 30 de marzo de 2021 a las 23:49:03 UTC-5, Matthew Wilcox=20
escribi=C3=B3:

> On Tue, Mar 30, 2021 at 09:37:15PM -0700, Edith Puclla wrote:
> > Hello Everyone, I am Edith from Peru, and I started to compile the Linu=
x=20
> > kernel.
> >=20
> > I am following this=20
> > guide:=20
> https://kernelnewbies.org/Outreachyfirstpatch?action=3Dshow&redirect=3DOP=
Wfirstpatch#kernel-setup-done
> > *Section*: Modifying a driver on native Linux
> >=20
> > I chose to modify this driver: *xhci-hcd* but I can't find the file to=
=20
> add=20
> > a print printk(KERN_DEBUG "I can modify the Linux kernel!\n").
> >=20
> > I look at all the files located in the same path of the Makefile after=
=20
> > executing: git grep xhci-hcd -- '*Makefile'
> >=20
> > Could you please tell me which file could I modify for that driver?
>
> The Linux Makefiles are written in a rather terse way that isn't
> necessarily the easiest to understand for someone who's not familiar
> with them.
>
> $ git grep xhci-hcd -- '*Makefile'
> drivers/usb/host/Makefile:xhci-hcd-y :=3D xhci.o xhci-mem.o xhci-ext-caps=
.o
> drivers/usb/host/Makefile:xhci-hcd-y +=3D xhci-ring.o xhci-hub.o xhci-dbg=
.o
> drivers/usb/host/Makefile:xhci-hcd-y +=3D xhci-trace.o
> drivers/usb/host/Makefile: xhci-hcd-y +=3D xhci-dbgcap.o xhci-dbgtty.o
> drivers/usb/host/Makefile: xhci-hcd-y +=3D xhci-debugfs.o
> drivers/usb/host/Makefile:obj-$(CONFIG_USB_XHCI_HCD) +=3D xhci-hcd.o
>
> 'xhci-hcd-y' is the list of .o files which make up the final link step
> to make xhci-hcd.o. Is that enough information for you to figure out
> which file to modify?
>
> (I'm trying to get you past the immediate problem you're hitting, which
> isn't terribly important, without just giving you the answer)
>
> The other thing you can do is build the kernel with 'make V=3D1', which t=
ells
> you what the build system is doing instead of the shortened output.
>

------=_Part_581_1542677296.1617256406994
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thank you, what I understand is that I could modify&nbsp;xhci.c for example=
, adding a&nbsp; printk, the idea is to add a change, compile the kernel an=
d then reset the changes. Is what I understand form the tutorial, let me kn=
ow if I am wrong.<div class=3D"gmail_quote"><div dir=3D"auto" class=3D"gmai=
l_attr">El martes, 30 de marzo de 2021 a las 23:49:03 UTC-5, Matthew Wilcox=
 escribi=C3=B3:<br/></div><blockquote class=3D"gmail_quote" style=3D"margin=
: 0 0 0 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex=
;">On Tue, Mar 30, 2021 at 09:37:15PM -0700, Edith Puclla wrote:
<br>&gt; Hello Everyone,  I am Edith from Peru, and I started to compile th=
e Linux=20
<br>&gt; kernel.
<br>&gt;=20
<br>&gt; I am following this=20
<br>&gt; guide: <a href=3D"https://kernelnewbies.org/Outreachyfirstpatch?ac=
tion=3Dshow&amp;redirect=3DOPWfirstpatch#kernel-setup-done" target=3D"_blan=
k" rel=3D"nofollow" data-saferedirecturl=3D"https://www.google.com/url?hl=
=3Des&amp;q=3Dhttps://kernelnewbies.org/Outreachyfirstpatch?action%3Dshow%2=
6redirect%3DOPWfirstpatch%23kernel-setup-done&amp;source=3Dgmail&amp;ust=3D=
1617342591328000&amp;usg=3DAFQjCNHaweUOPmU9DR2z_m86kGvtGCi6EQ">https://kern=
elnewbies.org/Outreachyfirstpatch?action=3Dshow&amp;redirect=3DOPWfirstpatc=
h#kernel-setup-done</a>
<br>&gt; *Section*: Modifying a driver on native Linux
<br>&gt;=20
<br>&gt; I chose to modify this driver: *xhci-hcd* but I can&#39;t find the=
 file to add=20
<br>&gt; a print printk(KERN_DEBUG &quot;I can modify the Linux kernel!\n&q=
uot;).
<br>&gt;=20
<br>&gt; I look at all the files located in the same path of the Makefile a=
fter=20
<br>&gt; executing:  git grep xhci-hcd -- &#39;*Makefile&#39;
<br>&gt;=20
<br>&gt; Could you please tell me which file could I modify for that driver=
?
<br>
<br>The Linux Makefiles are written in a rather terse way that isn&#39;t
<br>necessarily the easiest to understand for someone who&#39;s not familia=
r
<br>with them.
<br>
<br>$ git grep xhci-hcd -- &#39;*Makefile&#39;
<br>drivers/usb/host/Makefile:xhci-hcd-y :=3D xhci.o xhci-mem.o xhci-ext-ca=
ps.o
<br>drivers/usb/host/Makefile:xhci-hcd-y +=3D xhci-ring.o xhci-hub.o xhci-d=
bg.o
<br>drivers/usb/host/Makefile:xhci-hcd-y +=3D xhci-trace.o
<br>drivers/usb/host/Makefile:      xhci-hcd-y +=3D xhci-dbgcap.o xhci-dbgt=
ty.o
<br>drivers/usb/host/Makefile:      xhci-hcd-y              +=3D xhci-debug=
fs.o
<br>drivers/usb/host/Makefile:obj-$(CONFIG_USB_XHCI_HCD)    +=3D xhci-hcd.o
<br>
<br>&#39;xhci-hcd-y&#39; is the list of .o files which make up the final li=
nk step
<br>to make xhci-hcd.o.  Is that enough information for you to figure out
<br>which file to modify?
<br>
<br>(I&#39;m trying to get you past the immediate problem you&#39;re hittin=
g, which
<br>isn&#39;t terribly important, without just giving you the answer)
<br>
<br>The other thing you can do is build the kernel with &#39;make V=3D1&#39=
;, which tells
<br>you what the build system is doing instead of the shortened output.
<br></blockquote></div>
------=_Part_581_1542677296.1617256406994--

------=_Part_580_1836542276.1617256406994--

