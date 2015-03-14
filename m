X-GM-THRID: 8110844411904
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,263920401fbf6365
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.221.165 with SMTP id qf5mr52545391pac.30.1426308144801;
        Fri, 13 Mar 2015 21:42:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.134.99 with SMTP id pj3ls449708igb.5.gmail; Fri, 13 Mar
 2015 21:42:24 -0700 (PDT)
X-Received: by 10.66.136.175 with SMTP id qb15mr41289598pab.11.1426308144501;
        Fri, 13 Mar 2015 21:42:24 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-vc0-x232.google.com (mail-vc0-x232.google.com. [2607:f8b0:400c:c03::232])
        by gmr-mx.google.com with ESMTPS id o10si67290vdh.1.2015.03.13.21.42.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 21:42:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400c:c03::232 as permitted sender) client-ip=2607:f8b0:400c:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400c:c03::232 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vc0-f178.google.com with SMTP id id10so9095001vcb.9
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 21:42:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc:content-type;
        bh=mXY3VBRk/ko6vIqEPf85DXEnPDtjd4BcUcXBw9LvZ34=;
        b=1HxwI5Tpj1DSHq5Qbe+gOolIMvfeWlZ/wRaUMfDlquGoepxIN9/c1sqCPn+o82qCpS
         GENlIauIHHnaR+qQBy7J6AVV708lsI8C8Hu4ExDgq74sfibUYFd/vcnQuPA++gZRmrvq
         I2s3L12/8yph7KHqgo4Vsu0Aa1BgDUBd1tIVuxnbpGH4kZqWNuU8anKKPD4L+7B97rE5
         Q+7dFVPXgYgtoWMKHtvlo37Cw1KoZxGo0mdINv9gpuzKcNO9Bh7gSQJxi3a5TXJVvLAM
         zhA6dvUZGa977NbWum1uUpB1GMPPltMdp77jGr4peAYajcHGN8eh85Gk9opPQ2lEROUM
         iLPg==
X-Received: by 10.52.243.41 with SMTP id wv9mr55136257vdc.20.1426308144266;
 Fri, 13 Mar 2015 21:42:24 -0700 (PDT)
MIME-Version: 1.0
From: Somya Anand <somyaanand214@gmail.com>
Date: Sat, 14 Mar 2015 04:42:23 +0000
Message-ID: <CANPzvBAkk7yDQgrLOSz5_0khSa6ViqdavHS3NYJU8wRMBdvT=Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: i2o: Move assignment out
 of if statement
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a113401384781300511383e0e

--001a113401384781300511383e0e
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 13, 2015 at 11:09 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

Actually, i2o is on the way out of the kernel, so there is no point in
changing it.  There is a list of drivers to avoid here:

 I will keep in mind from next time.


http://kernelnewbies.org/Outreachyfirstpatch

Thanks

--
Somya



On Fri, 13 Mar 2015, Somya Anand wrote:

> Checkpatch.pl suggest to avoid assignment in if statement.
>
> This patch moves assignments out of the if statement and place
> it before the if statement. This is done using following coccinelle
> script.
>
> @@
> expression E1;
> identifier p;
> statement S;
> @@
> - if ((p = E1))
> + p = E1;
> + if (p)
>       S
>
> Signed-off-by: Somya Anand <somyaanand214@gmail.com>
> ---
>  drivers/staging/i2o/bus-osm.c |  3 ++-
>  drivers/staging/i2o/iop.c     | 24 ++++++++++++++++--------
>  drivers/staging/i2o/pci.c     |  9 ++++++---
>  3 files changed, 24 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/staging/i2o/bus-osm.c b/drivers/staging/i2o/bus-osm.c
> index 7aa0339..43e357e 100644
> --- a/drivers/staging/i2o/bus-osm.c
> +++ b/drivers/staging/i2o/bus-osm.c
> @@ -69,7 +69,8 @@ static ssize_t i2o_bus_store_scan(struct device *d,
>       struct i2o_device *i2o_dev = to_i2o_device(d);
>       int rc;
>
> -     if ((rc = i2o_bus_scan(i2o_dev)))
> +     rc = i2o_bus_scan(i2o_dev);
> +     if (rc)
>               osm_warn("bus scan failed %d\n", rc);
>
>       return count;
> diff --git a/drivers/staging/i2o/iop.c b/drivers/staging/i2o/iop.c
> index 52334fc..d4a7b91 100644
> --- a/drivers/staging/i2o/iop.c
> +++ b/drivers/staging/i2o/iop.c
> @@ -1096,7 +1096,8 @@ int i2o_iop_add(struct i2o_controller *c)
>  {
>       int rc;
>
> -     if ((rc = device_add(&c->device))) {
> +     rc = device_add(&c->device);
> +     if (rc) {
>               osm_err("%s: could not add controller\n", c->name);
>               goto iop_reset;
>       }
> @@ -1105,24 +1106,28 @@ int i2o_iop_add(struct i2o_controller *c)
>       osm_info("%s: This may take a few minutes if there are many
devices\n",
>                c->name);
>
> -     if ((rc = i2o_iop_activate(c))) {
> +     rc = i2o_iop_activate(c);
> +     if (rc) {
>               osm_err("%s: could not activate controller\n", c->name);
>               goto device_del;
>       }
>
>       osm_debug("%s: building sys table...\n", c->name);
>
> -     if ((rc = i2o_systab_build()))
> +     rc = i2o_systab_build();
> +     if (rc)
>               goto device_del;
>
>       osm_debug("%s: online controller...\n", c->name);
>
> -     if ((rc = i2o_iop_online(c)))
> +     rc = i2o_iop_online(c);
> +     if (rc)
>               goto device_del;
>
>       osm_debug("%s: getting LCT...\n", c->name);
>
> -     if ((rc = i2o_exec_lct_get(c)))
> +     rc = i2o_exec_lct_get(c);
> +     if (rc)
>               goto device_del;
>
>       list_add(&c->list, &i2o_controllers);
> @@ -1192,13 +1197,16 @@ static int __init i2o_iop_init(void)
>
>       printk(KERN_INFO OSM_DESCRIPTION " v" OSM_VERSION "\n");
>
> -     if ((rc = i2o_driver_init()))
> +     rc = i2o_driver_init();
> +     if (rc)
>               goto exit;
>
> -     if ((rc = i2o_exec_init()))
> +     rc = i2o_exec_init();
> +     if (rc)
>               goto driver_exit;
>
> -     if ((rc = i2o_pci_init()))
> +     rc = i2o_pci_init();
> +     if (rc)
>               goto exec_exit;
>
>       return 0;
> diff --git a/drivers/staging/i2o/pci.c b/drivers/staging/i2o/pci.c
> index b3b8a61..49804c9 100644
> --- a/drivers/staging/i2o/pci.c
> +++ b/drivers/staging/i2o/pci.c
> @@ -329,7 +329,8 @@ static int i2o_pci_probe(struct pci_dev *pdev, const
struct pci_device_id *id)
>               return -ENODEV;
>       }
>
> -     if ((rc = pci_enable_device(pdev))) {
> +     rc = pci_enable_device(pdev);
> +     if (rc) {
>               printk(KERN_WARNING "i2o: couldn't enable device %s\n",
>                      pci_name(pdev));
>               return rc;
> @@ -410,7 +411,8 @@ static int i2o_pci_probe(struct pci_dev *pdev, const
struct pci_device_id *id)
>  #endif
>       }
>
> -     if ((rc = i2o_pci_alloc(c))) {
> +     rc = i2o_pci_alloc(c);
> +     if (rc) {
>               printk(KERN_ERR "%s: DMA / IO allocation for I2O controller
"
>                      "failed\n", c->name);
>               goto free_controller;
> @@ -422,7 +424,8 @@ static int i2o_pci_probe(struct pci_dev *pdev, const
struct pci_device_id *id)
>               goto free_pci;
>       }
>
> -     if ((rc = i2o_iop_add(c)))
> +     rc = i2o_iop_add(c);
> +     if (rc)
>               goto uninstall;
>
>       if (i960)
> --
> 1.9.1
>

> --
> You received this message because you are subscribed to the Google Groups
"outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
https://groups.google.com/d/msgid/outreachy-kernel/1426267392-27533-1-git-send-email-somyaanand214%40gmail.com
.
> For more options, visit https://groups.google.com/d/optout.
>

--001a113401384781300511383e0e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br></p>
<p dir=3D"ltr">On Fri, Mar 13, 2015 at 11:09 PM, Julia Lawall &lt;<a href=
=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:</p>
<blockquote><p dir=3D"ltr">Actually, i2o is on the way out of the kernel, s=
o there is no point in<br>
changing it.=C2=A0 There is a list of drivers to avoid here:</p>
</blockquote>
<blockquote><p dir=3D"ltr"></p>
<p dir=3D"ltr">I will keep in mind from next time. </p>
</blockquote>
<blockquote><p dir=3D"ltr"><br>
<a href=3D"http://kernelnewbies.org/Outreachyfirstpatch">http://kernelnewbi=
es.org/Outreachyfirstpatch</a></p>
</blockquote>
<p dir=3D"ltr">Thanks</p>
<p dir=3D"ltr">--<br>
Somya</p>
<blockquote><p dir=3D"ltr"><br><br></p>
<p dir=3D"ltr">On Fri, 13 Mar 2015, Somya Anand wrote:</p>
<p dir=3D"ltr">&gt; Checkpatch.pl suggest to avoid assignment in if stateme=
nt.<br>
&gt;<br>
&gt; This patch moves assignments out of the if statement and place<br>
&gt; it before the if statement. This is done using following coccinelle<br=
>
&gt; script.<br>
&gt;<br>
&gt; @@<br>
&gt; expression E1;<br>
&gt; identifier p;<br>
&gt; statement S;<br>
&gt; @@<br>
&gt; - if ((p =3D E1))<br>
&gt; + p =3D E1;<br>
&gt; + if (p)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0S<br>
&gt;<br>
&gt; Signed-off-by: Somya Anand &lt;<a href=3D"mailto:somyaanand214@gmail.c=
om">somyaanand214@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/i2o/bus-osm.c |=C2=A0 3 ++-<br>
&gt;=C2=A0 drivers/staging/i2o/iop.c=C2=A0 =C2=A0 =C2=A0| 24 ++++++++++++++=
++--------<br>
&gt;=C2=A0 drivers/staging/i2o/pci.c=C2=A0 =C2=A0 =C2=A0|=C2=A0 9 ++++++---=
<br>
&gt;=C2=A0 3 files changed, 24 insertions(+), 12 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/i2o/bus-osm.c b/drivers/staging/i2o/bus-o=
sm.c<br>
&gt; index 7aa0339..43e357e 100644<br>
&gt; --- a/drivers/staging/i2o/bus-osm.c<br>
&gt; +++ b/drivers/staging/i2o/bus-osm.c<br>
&gt; @@ -69,7 +69,8 @@ static ssize_t i2o_bus_store_scan(struct device *d,<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct i2o_device *i2o_dev =3D to_i2o_device=
(d);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int rc;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if ((rc =3D i2o_bus_scan(i2o_dev)))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0rc =3D i2o_bus_scan(i2o_dev);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (rc)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0osm_warn(&quot;b=
us scan failed %d\n&quot;, rc);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return count;<br>
&gt; diff --git a/drivers/staging/i2o/iop.c b/drivers/staging/i2o/iop.c<br>
&gt; index 52334fc..d4a7b91 100644<br>
&gt; --- a/drivers/staging/i2o/iop.c<br>
&gt; +++ b/drivers/staging/i2o/iop.c<br>
&gt; @@ -1096,7 +1096,8 @@ int i2o_iop_add(struct i2o_controller *c)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int rc;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if ((rc =3D device_add(&amp;c-&gt;device))) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0rc =3D device_add(&amp;c-&gt;device);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (rc) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0osm_err(&quot;%s=
: could not add controller\n&quot;, c-&gt;name);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto iop_reset;<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; @@ -1105,24 +1106,28 @@ int i2o_iop_add(struct i2o_controller *c)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0osm_info(&quot;%s: This may take a few minut=
es if there are many devices\n&quot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 c-&gt;name);<br=
>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if ((rc =3D i2o_iop_activate(c))) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0rc =3D i2o_iop_activate(c);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (rc) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0osm_err(&quot;%s=
: could not activate controller\n&quot;, c-&gt;name);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto device_del;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0osm_debug(&quot;%s: building sys table...\n&=
quot;, c-&gt;name);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if ((rc =3D i2o_systab_build()))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0rc =3D i2o_systab_build();<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (rc)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto device_del;=
<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0osm_debug(&quot;%s: online controller...\n&q=
uot;, c-&gt;name);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if ((rc =3D i2o_iop_online(c)))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0rc =3D i2o_iop_online(c);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (rc)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto device_del;=
<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0osm_debug(&quot;%s: getting LCT...\n&quot;, =
c-&gt;name);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if ((rc =3D i2o_exec_lct_get(c)))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0rc =3D i2o_exec_lct_get(c);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (rc)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto device_del;=
<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0list_add(&amp;c-&gt;list, &amp;i2o_controlle=
rs);<br>
&gt; @@ -1192,13 +1197,16 @@ static int __init i2o_iop_init(void)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0printk(KERN_INFO OSM_DESCRIPTION &quot; v&qu=
ot; OSM_VERSION &quot;\n&quot;);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if ((rc =3D i2o_driver_init()))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0rc =3D i2o_driver_init();<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (rc)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto exit;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if ((rc =3D i2o_exec_init()))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0rc =3D i2o_exec_init();<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (rc)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto driver_exit=
;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if ((rc =3D i2o_pci_init()))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0rc =3D i2o_pci_init();<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (rc)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto exec_exit;<=
br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt; diff --git a/drivers/staging/i2o/pci.c b/drivers/staging/i2o/pci.c<br>
&gt; index b3b8a61..49804c9 100644<br>
&gt; --- a/drivers/staging/i2o/pci.c<br>
&gt; +++ b/drivers/staging/i2o/pci.c<br>
&gt; @@ -329,7 +329,8 @@ static int i2o_pci_probe(struct pci_dev *pdev, con=
st struct pci_device_id *id)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -ENODEV;<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if ((rc =3D pci_enable_device(pdev))) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0rc =3D pci_enable_device(pdev);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (rc) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(KERN_WARN=
ING &quot;i2o: couldn&#39;t enable device %s\n&quot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 pci_name(pdev));<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return rc;<br>
&gt; @@ -410,7 +411,8 @@ static int i2o_pci_probe(struct pci_dev *pdev, con=
st struct pci_device_id *id)<br>
&gt;=C2=A0 #endif<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if ((rc =3D i2o_pci_alloc(c))) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0rc =3D i2o_pci_alloc(c);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (rc) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0printk(KERN_ERR =
&quot;%s: DMA / IO allocation for I2O controller &quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 &quot;failed\n&quot;, c-&gt;name);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto free_contro=
ller;<br>
&gt; @@ -422,7 +424,8 @@ static int i2o_pci_probe(struct pci_dev *pdev, con=
st struct pci_device_id *id)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto free_pci;<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if ((rc =3D i2o_iop_add(c)))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0rc =3D i2o_iop_add(c);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (rc)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto uninstall;<=
br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (i960)<br>
&gt; --<br>
&gt; 1.9.1<br>
&gt;</p>
<p dir=3D"ltr"><font color=3D"#888888">&gt; --</font><br>
<font color=3D"#888888">&gt; You received this message because you are subs=
cribed to the Google Groups &quot;outreachy-kernel&quot; group.</font><br>
<font color=3D"#888888">&gt; To unsubscribe from this group and stop receiv=
ing emails from it, send an email to </font><a href=3D"mailto:outreachy-ker=
nel%2Bunsubscribe@googlegroups.com"><font color=3D"#888888">outreachy-kerne=
l+unsubscribe@googlegroups.com</font></a><font color=3D"#888888">.</font><b=
r>
<font color=3D"#888888">&gt; To post to this group, send email to </font><a=
 href=3D"mailto:outreachy-kernel@googlegroups.com"><font color=3D"#888888">=
outreachy-kernel@googlegroups.com</font></a><font color=3D"#888888">.</font=
><br>
<font color=3D"#888888">&gt; To view this discussion on the web visit </fon=
t><a href=3D"https://groups.google.com/d/msgid/outreachy-kernel/1426267392-=
27533-1-git-send-email-somyaanand214%40gmail.com"><font color=3D"#888888">h=
ttps://groups.google.com/d/msgid/outreachy-kernel/1426267392-27533-1-git-se=
nd-email-somyaanand214%40gmail.com</font></a><font color=3D"#888888">.</fon=
t><br>
<font color=3D"#888888">&gt; For more options, visit </font><a href=3D"http=
s://groups.google.com/d/optout"><font color=3D"#888888">https://groups.goog=
le.com/d/optout</font></a><font color=3D"#888888">.</font><br>
<font color=3D"#888888">&gt;</font><br>
</p>
</blockquote>
<p dir=3D"ltr"></p>

--001a113401384781300511383e0e--

