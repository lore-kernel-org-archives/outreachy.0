X-GM-THRID: 6255258611058999296
X-Received: by 10.129.116.214 with SMTP id p205mr43760956ywc.55.1456419061256;
        Thu, 25 Feb 2016 08:51:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.37.71 with SMTP id q65ls460562qgq.92.gmail; Thu, 25 Feb
 2016 08:51:00 -0800 (PST)
X-Received: by 10.13.223.140 with SMTP id i134mr40279500ywe.11.1456419060641;
        Thu, 25 Feb 2016 08:51:00 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-oi0-x22a.google.com (mail-oi0-x22a.google.com. [2607:f8b0:4003:c06::22a])
        by gmr-mx.google.com with ESMTPS id xh11si296938igb.0.2016.02.25.08.51.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 08:51:00 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c06::22a as permitted sender) client-ip=2607:f8b0:4003:c06::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c06::22a as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x22a.google.com with SMTP id w5so43303501oie.3
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 08:51:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=LBn0QrK3RPP+sZRQRDmbnWyacONpFAlXGNZdNnSHq8E=;
        b=Vr3lP9NtZR/yW5l+gzunKqQVQrEZtRpb9WhHAbtBDYEg5WqXHEVmDcJsjifrr2+kd6
         AsEg+ngw7Qd4a/Xw0tn/Pm9RrnQ2DjL3VUIijf6E0ivhN3NMIpPMZZF/bbrKvxym5n+h
         /gK6bvREShnPiGR7v5jYXSC+VuOUevkT/GCU1BJB+232/CMxZFZLVNJ54PKjqVxZ0LNL
         KdhClbNDtekCU6i4ZXCo5C2gPekeoa+CucC9agXgTUCBIpwzWZYAz/l/NSOtDnsInK0w
         67eLu/Bzqedhp73uZ5axdATdVemXFu/dhbWaJFuHApeaIJcn1FvcwwYMPmgOQQgdE4tZ
         xMbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=LBn0QrK3RPP+sZRQRDmbnWyacONpFAlXGNZdNnSHq8E=;
        b=X0rfYbfDyjcaUAUTy+TlKZjH8X5g0qUvtOfOi4ElsGxnTaNQRKT0Q3029KdUDdX9a0
         tiFUu5AftDZH9UHkq4SraIhYrawjyBLKg3+MJIF7nZQiqP/kM6lbkk3d0kgeVFabZ+F0
         YRlMdGa3vrZ5iVYtP44fjT6fKnrkjkHLIlqyWwzH3xCCHynUfyX1i1fchKXmU+4XtP4d
         sutmEMkr85JPZBh+iVhkyrbOYjM8dOnvStBYmoccAM7cH0ndzl9auxGPiRPO/JHFDcaZ
         re3ANecLGoNQB3h2Guak2SBP/lNQTPYjwQMcOOpgRiVJjLXJLQStbMVS5Wo97L4/5QwL
         NQ/Q==
X-Gm-Message-State: AG10YORgviKWspL3P0n2vc5ckjWyJvDNNQPVv9p3jNkC4rOdHsw0emZeaMIDsmJM4nlE0NBcQ9qy4IF9lMO7rg==
MIME-Version: 1.0
X-Received: by 10.202.169.198 with SMTP id s189mr33361515oie.35.1456419060396;
 Thu, 25 Feb 2016 08:51:00 -0800 (PST)
Received: by 10.157.40.238 with HTTP; Thu, 25 Feb 2016 08:51:00 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602251701180.2708@hadrien>
References: <1456415872-7808-1-git-send-email-bhumirks@gmail.com>
	<alpine.DEB.2.10.1602251701180.2708@hadrien>
Date: Thu, 25 Feb 2016 22:21:00 +0530
Message-ID: <CAOH+1jEUq-kp09wHNCBMVi+Sd-E_HBG-XnkcqEAyFtNUPz7wxA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lov: Use
 list_for_each_entry instead of list_for_each
From: Bhumika Goyal <bhumirks@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a113cddf8bd3e58052c9afc51

--001a113cddf8bd3e58052c9afc51
Content-Type: text/plain; charset=UTF-8

On Thu, Feb 25, 2016 at 9:31 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

> On Thu, 25 Feb 2016, Bhumika Goyal wrote:
>
> > Use list_for_each_entry instead of list_for_each and list_entry as it
> > simplifies the code. Done using coccinelle:
>
> Did you check in each case that req is not used after the loop?
>
> julia
>
>
Yes I checked and req is not used anywhere after list_for_each_entry loop
in each case.

Thanks,
Bhumika

> >
> > @@
> > type T,T2;
> > identifier I1,I2;
> > expression e1,e2;
> > iterator name list_for_each_entry;
> > iterator name list_for_each;
> > @@
> >
> > - T *I1;
> > ...
> > - list_for_each(I1,e1)
> > + list_for_each_entry(I2,e1,e2)
> > {
> > ...when!=T *I1;
> > - I2=list_entry(I1,T2,e2);
> > ...
> > }
> >
> > @@
> > type T,T2,T3;
> > identifier I1,I2,I3;
> > expression e1,e2;
> > @@
> >
> > - T *I1;
> > + T3 *I3;
> > ...
> > - list_for_each(I1,e1)
> > + list_for_each_entry(I3,e1,e2)
> > {
> > ...when!=T *I1;
> > - T3 *I3=list_entry(I1,T2,e2);
> > ...
> > }
> >
> > Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> > ---
> >  drivers/staging/lustre/lustre/lov/lov_obd.c     | 19 ++++---------------
> >  drivers/staging/lustre/lustre/lov/lov_request.c |  5 +----
> >  2 files changed, 5 insertions(+), 19 deletions(-)
> >
> > diff --git a/drivers/staging/lustre/lustre/lov/lov_obd.c
> b/drivers/staging/lustre/lustre/lov/lov_obd.c
> > index dcaa5a1..1ce7341 100644
> > --- a/drivers/staging/lustre/lustre/lov/lov_obd.c
> > +++ b/drivers/staging/lustre/lustre/lov/lov_obd.c
> > @@ -1064,7 +1064,6 @@ static int lov_destroy(const struct lu_env *env,
> struct obd_export *exp,
> >       struct lov_request_set *set;
> >       struct obd_info oinfo;
> >       struct lov_request *req;
> > -     struct list_head *pos;
> >       struct lov_obd *lov;
> >       int rc = 0, err = 0;
> >
> > @@ -1084,9 +1083,7 @@ static int lov_destroy(const struct lu_env *env,
> struct obd_export *exp,
> >       if (rc)
> >               goto out;
> >
> > -     list_for_each(pos, &set->set_list) {
> > -             req = list_entry(pos, struct lov_request, rq_link);
> > -
> > +     list_for_each_entry(req, &set->set_list, rq_link) {
> >               if (oa->o_valid & OBD_MD_FLCOOKIE)
> >                       oti->oti_logcookies = set->set_cookies +
> req->rq_stripe;
> >
> > @@ -1131,7 +1128,6 @@ static int lov_getattr_async(struct obd_export
> *exp, struct obd_info *oinfo,
> >  {
> >       struct lov_request_set *lovset;
> >       struct lov_obd *lov;
> > -     struct list_head *pos;
> >       struct lov_request *req;
> >       int rc = 0, err;
> >
> > @@ -1151,9 +1147,7 @@ static int lov_getattr_async(struct obd_export
> *exp, struct obd_info *oinfo,
> >              POSTID(&oinfo->oi_md->lsm_oi),
> oinfo->oi_md->lsm_stripe_count,
> >              oinfo->oi_md->lsm_stripe_size);
> >
> > -     list_for_each(pos, &lovset->set_list) {
> > -             req = list_entry(pos, struct lov_request, rq_link);
> > -
> > +     list_for_each_entry(req, &lovset->set_list, rq_link) {
> >               CDEBUG(D_INFO, "objid " DOSTID "[%d] has subobj " DOSTID "
> at idx%u\n",
> >                      POSTID(&oinfo->oi_oa->o_oi), req->rq_stripe,
> >                      POSTID(&req->rq_oi.oi_oa->o_oi), req->rq_idx);
> > @@ -1204,7 +1198,6 @@ static int lov_setattr_async(struct obd_export
> *exp, struct obd_info *oinfo,
> >  {
> >       struct lov_request_set *set;
> >       struct lov_request *req;
> > -     struct list_head *pos;
> >       struct lov_obd *lov;
> >       int rc = 0;
> >
> > @@ -1228,9 +1221,7 @@ static int lov_setattr_async(struct obd_export
> *exp, struct obd_info *oinfo,
> >              oinfo->oi_md->lsm_stripe_count,
> >              oinfo->oi_md->lsm_stripe_size);
> >
> > -     list_for_each(pos, &set->set_list) {
> > -             req = list_entry(pos, struct lov_request, rq_link);
> > -
> > +     list_for_each_entry(req, &set->set_list, rq_link) {
> >               if (oinfo->oi_oa->o_valid & OBD_MD_FLCOOKIE)
> >                       oti->oti_logcookies = set->set_cookies +
> req->rq_stripe;
> >
> > @@ -1324,7 +1315,6 @@ static int lov_statfs_async(struct obd_export
> *exp, struct obd_info *oinfo,
> >       struct obd_device      *obd = class_exp2obd(exp);
> >       struct lov_request_set *set;
> >       struct lov_request *req;
> > -     struct list_head *pos;
> >       struct lov_obd *lov;
> >       int rc = 0;
> >
> > @@ -1335,8 +1325,7 @@ static int lov_statfs_async(struct obd_export
> *exp, struct obd_info *oinfo,
> >       if (rc)
> >               return rc;
> >
> > -     list_for_each(pos, &set->set_list) {
> > -             req = list_entry(pos, struct lov_request, rq_link);
> > +     list_for_each_entry(req, &set->set_list, rq_link) {
> >               rc = obd_statfs_async(lov->lov_tgts[req->rq_idx]->ltd_exp,
> >                                     &req->rq_oi, max_age, rqset);
> >               if (rc)
> > diff --git a/drivers/staging/lustre/lustre/lov/lov_request.c
> b/drivers/staging/lustre/lustre/lov/lov_request.c
> > index 6c5ae05..34c26ec 100644
> > --- a/drivers/staging/lustre/lustre/lov/lov_request.c
> > +++ b/drivers/staging/lustre/lustre/lov/lov_request.c
> > @@ -190,7 +190,6 @@ out:
> >
> >  static int common_attr_done(struct lov_request_set *set)
> >  {
> > -     struct list_head *pos;
> >       struct lov_request *req;
> >       struct obdo *tmp_oa;
> >       int rc = 0, attrset = 0;
> > @@ -207,9 +206,7 @@ static int common_attr_done(struct lov_request_set
> *set)
> >               goto out;
> >       }
> >
> > -     list_for_each(pos, &set->set_list) {
> > -             req = list_entry(pos, struct lov_request, rq_link);
> > -
> > +     list_for_each_entry(req, &set->set_list, rq_link) {
> >               if (!req->rq_complete || req->rq_rc)
> >                       continue;
> >               if (req->rq_oi.oi_oa->o_valid == 0)   /* inactive stripe */
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/1456415872-7808-1-git-send-email-bhumirks%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--001a113cddf8bd3e58052c9afc51
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Feb 25, 2016 at 9:31 PM, Julia Lawall <span dir=3D"ltr">&lt;<a =
href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">O=
n Thu, 25 Feb 2016, Bhumika Goyal wrote:<br>
<br>
&gt; Use list_for_each_entry instead of list_for_each and list_entry as it<=
br>
&gt; simplifies the code. Done using coccinelle:<br>
<br>
</span>Did you check in each case that req is not used after the loop?<br>
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br></div></div></blockquote><div><=
br></div><div>Yes I checked and req is not used anywhere after list_for_eac=
h_entry loop in each case.<br><br></div><div>Thanks,<br></div><div>Bhumika=
=C2=A0 <br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div =
class=3D"h5">
&gt;<br>
&gt; @@<br>
&gt; type T,T2;<br>
&gt; identifier I1,I2;<br>
&gt; expression e1,e2;<br>
&gt; iterator name list_for_each_entry;<br>
&gt; iterator name list_for_each;<br>
&gt; @@<br>
&gt;<br>
&gt; - T *I1;<br>
&gt; ...<br>
&gt; - list_for_each(I1,e1)<br>
&gt; + list_for_each_entry(I2,e1,e2)<br>
&gt; {<br>
&gt; ...when!=3DT *I1;<br>
&gt; - I2=3Dlist_entry(I1,T2,e2);<br>
&gt; ...<br>
&gt; }<br>
&gt;<br>
&gt; @@<br>
&gt; type T,T2,T3;<br>
&gt; identifier I1,I2,I3;<br>
&gt; expression e1,e2;<br>
&gt; @@<br>
&gt;<br>
&gt; - T *I1;<br>
&gt; + T3 *I3;<br>
&gt; ...<br>
&gt; - list_for_each(I1,e1)<br>
&gt; + list_for_each_entry(I3,e1,e2)<br>
&gt; {<br>
&gt; ...when!=3DT *I1;<br>
&gt; - T3 *I3=3Dlist_entry(I1,T2,e2);<br>
&gt; ...<br>
&gt; }<br>
&gt;<br>
&gt; Signed-off-by: Bhumika Goyal &lt;<a href=3D"mailto:bhumirks@gmail.com"=
>bhumirks@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/lustre/lustre/lov/lov_obd.c=C2=A0 =C2=A0 =C2=A0|=
 19 ++++---------------<br>
&gt;=C2=A0 drivers/staging/lustre/lustre/lov/lov_request.c |=C2=A0 5 +----<=
br>
&gt;=C2=A0 2 files changed, 5 insertions(+), 19 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/lustre/lustre/lov/lov_obd.c b/drivers/sta=
ging/lustre/lustre/lov/lov_obd.c<br>
&gt; index dcaa5a1..1ce7341 100644<br>
&gt; --- a/drivers/staging/lustre/lustre/lov/lov_obd.c<br>
&gt; +++ b/drivers/staging/lustre/lustre/lov/lov_obd.c<br>
&gt; @@ -1064,7 +1064,6 @@ static int lov_destroy(const struct lu_env *env,=
 struct obd_export *exp,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct lov_request_set *set;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct obd_info oinfo;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct lov_request *req;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0struct list_head *pos;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct lov_obd *lov;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int rc =3D 0, err =3D 0;<br>
&gt;<br>
&gt; @@ -1084,9 +1083,7 @@ static int lov_destroy(const struct lu_env *env,=
 struct obd_export *exp,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (rc)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto out;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0list_for_each(pos, &amp;set-&gt;set_list) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0req =3D list_entry(po=
s, struct lov_request, rq_link);<br>
&gt; -<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(req, &amp;set-&gt;set_list, r=
q_link) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (oa-&gt;o_val=
id &amp; OBD_MD_FLCOOKIE)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0oti-&gt;oti_logcookies =3D set-&gt;set_cookies + req-&gt;rq_st=
ripe;<br>
&gt;<br>
&gt; @@ -1131,7 +1128,6 @@ static int lov_getattr_async(struct obd_export *=
exp, struct obd_info *oinfo,<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct lov_request_set *lovset;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct lov_obd *lov;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0struct list_head *pos;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct lov_request *req;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int rc =3D 0, err;<br>
&gt;<br>
&gt; @@ -1151,9 +1147,7 @@ static int lov_getattr_async(struct obd_export *=
exp, struct obd_info *oinfo,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 POSTID(&amp;oinfo-&gt;=
oi_md-&gt;lsm_oi), oinfo-&gt;oi_md-&gt;lsm_stripe_count,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 oinfo-&gt;oi_md-&gt;ls=
m_stripe_size);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0list_for_each(pos, &amp;lovset-&gt;set_list) {<br=
>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0req =3D list_entry(po=
s, struct lov_request, rq_link);<br>
&gt; -<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(req, &amp;lovset-&gt;set_list=
, rq_link) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0CDEBUG(D_INFO, &=
quot;objid &quot; DOSTID &quot;[%d] has subobj &quot; DOSTID &quot; at idx%=
u\n&quot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 POSTID(&amp;oinfo-&gt;oi_oa-&gt;o_oi), req-&gt;rq_stripe,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 POSTID(&amp;req-&gt;rq_oi.oi_oa-&gt;o_oi), req-&gt;rq_idx);<br>
&gt; @@ -1204,7 +1198,6 @@ static int lov_setattr_async(struct obd_export *=
exp, struct obd_info *oinfo,<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct lov_request_set *set;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct lov_request *req;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0struct list_head *pos;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct lov_obd *lov;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int rc =3D 0;<br>
&gt;<br>
&gt; @@ -1228,9 +1221,7 @@ static int lov_setattr_async(struct obd_export *=
exp, struct obd_info *oinfo,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 oinfo-&gt;oi_md-&gt;ls=
m_stripe_count,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 oinfo-&gt;oi_md-&gt;ls=
m_stripe_size);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0list_for_each(pos, &amp;set-&gt;set_list) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0req =3D list_entry(po=
s, struct lov_request, rq_link);<br>
&gt; -<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(req, &amp;set-&gt;set_list, r=
q_link) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (oinfo-&gt;oi=
_oa-&gt;o_valid &amp; OBD_MD_FLCOOKIE)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0oti-&gt;oti_logcookies =3D set-&gt;set_cookies + req-&gt;rq_st=
ripe;<br>
&gt;<br>
&gt; @@ -1324,7 +1315,6 @@ static int lov_statfs_async(struct obd_export *e=
xp, struct obd_info *oinfo,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct obd_device=C2=A0 =C2=A0 =C2=A0 *obd =
=3D class_exp2obd(exp);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct lov_request_set *set;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct lov_request *req;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0struct list_head *pos;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct lov_obd *lov;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int rc =3D 0;<br>
&gt;<br>
&gt; @@ -1335,8 +1325,7 @@ static int lov_statfs_async(struct obd_export *e=
xp, struct obd_info *oinfo,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (rc)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return rc;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0list_for_each(pos, &amp;set-&gt;set_list) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0req =3D list_entry(po=
s, struct lov_request, rq_link);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(req, &amp;set-&gt;set_list, r=
q_link) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rc =3D obd_statf=
s_async(lov-&gt;lov_tgts[req-&gt;rq_idx]-&gt;ltd_exp,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&amp;req-&gt;=
rq_oi, max_age, rqset);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (rc)<br>
&gt; diff --git a/drivers/staging/lustre/lustre/lov/lov_request.c b/drivers=
/staging/lustre/lustre/lov/lov_request.c<br>
&gt; index 6c5ae05..34c26ec 100644<br>
&gt; --- a/drivers/staging/lustre/lustre/lov/lov_request.c<br>
&gt; +++ b/drivers/staging/lustre/lustre/lov/lov_request.c<br>
&gt; @@ -190,7 +190,6 @@ out:<br>
&gt;<br>
&gt;=C2=A0 static int common_attr_done(struct lov_request_set *set)<br>
&gt;=C2=A0 {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0struct list_head *pos;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct lov_request *req;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct obdo *tmp_oa;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int rc =3D 0, attrset =3D 0;<br>
&gt; @@ -207,9 +206,7 @@ static int common_attr_done(struct lov_request_set=
 *set)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto out;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0list_for_each(pos, &amp;set-&gt;set_list) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0req =3D list_entry(po=
s, struct lov_request, rq_link);<br>
&gt; -<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(req, &amp;set-&gt;set_list, r=
q_link) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!req-&gt;rq_=
complete || req-&gt;rq_rc)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0continue;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (req-&gt;rq_o=
i.oi_oa-&gt;o_valid =3D=3D 0)=C2=A0 =C2=A0/* inactive stripe */<br>
&gt; --<br>
&gt; 1.9.1<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/1456415872-7808-1-git-send-email-bhumirks%=
40gmail.com" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com=
/d/msgid/outreachy-kernel/1456415872-7808-1-git-send-email-bhumirks%40gmail=
.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</font></span></blockquote></div><br></div></div>

--001a113cddf8bd3e58052c9afc51--

