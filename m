X-GM-THRID: 6394061646033059840
X-Received: by 10.237.59.226 with SMTP id s31mr4844435qte.31.1488818523005;
        Mon, 06 Mar 2017 08:42:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.22.129 with SMTP id c1ls18011150ote.14.gmail; Mon, 06 Mar
 2017 08:42:02 -0800 (PST)
X-Received: by 10.31.248.65 with SMTP id w62mr3780964vkh.20.1488818522616;
        Mon, 06 Mar 2017 08:42:02 -0800 (PST)
Received: by 10.202.215.6 with SMTP id o6msoig;
        Mon, 6 Mar 2017 08:25:49 -0800 (PST)
X-Received: by 10.176.65.8 with SMTP id j8mr4628316uad.14.1488817549503;
        Mon, 06 Mar 2017 08:25:49 -0800 (PST)
Return-Path: <prvs=2317a6bbe=paf@cray.com>
Received: from esa2.cray.iphmx.com (esa2.cray.iphmx.com. [68.232.143.164])
        by gmr-mx.google.com with ESMTPS id n63si84021ywb.7.2017.03.06.08.25.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 08:25:49 -0800 (PST)
Received-SPF: pass (google.com: domain of prvs=2317a6bbe=paf@cray.com designates 68.232.143.164 as permitted sender) client-ip=68.232.143.164;
Authentication-Results: gmr-mx.google.com;
       dkim=pass (test mode) header.i=@cray.com;
       dkim=pass header.i=@crayinc.onmicrosoft.com;
       spf=pass (google.com: domain of prvs=2317a6bbe=paf@cray.com designates 68.232.143.164 as permitted sender) smtp.mailfrom=prvs=2317a6bbe=paf@cray.com
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=cray.com; i=@cray.com; q=dns/txt; s=cray1024;
  t=1488817548; x=1520353548;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:mime-version;
  bh=uG6fMZBCluJThKP87Zva0W0CkpY+UqKxtzUhoTJkQdc=;
  b=OMxwuEFuV5RLOns8u4E0fepDhqot3BVt0ItDy2TsVp2oFubV6hQB1Dvn
   TGbygipaiAA+ParXkZe4uqF4EcGZztzLlG16aDCt48acmiPOAWCPasl6V
   AFda001iBcRZEP2Al2zeVYPs1/V3xqVJybM6eQSpxfXGAsZrdee0MJS5D
   o=;
X-IronPort-AV: E=Sophos;i="5.35,254,1484006400"; 
   d="scan'208,217";a="12728594"
X-Cray-OBMMKR: 1433258124 12728594
Received: from cray-smtp-2.cray.com (HELO CFWEX01.americas.cray.com) ([136.162.34.11])
  by esa2.cray.iphmx.com with ESMTP/TLS/AES256-SHA; 06 Mar 2017 16:25:44 +0000
Received: from CFWEXHYBRID.americas.cray.com (172.30.88.178) by
 CFWEX01.americas.cray.com (172.30.88.25) with Microsoft SMTP Server (TLS) id
 14.3.319.2; Mon, 6 Mar 2017 10:25:43 -0600
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (207.46.163.83)
 by mail.cray.com (172.30.88.178) with Microsoft SMTP Server (TLS) id
 14.3.319.2; Mon, 6 Mar 2017 10:25:41 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=crayinc.onmicrosoft.com; s=selector1-cray-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=DsLcQAn2CqHmtcUtNw3DukJE4w4CxhwqK8nZCNI3h40=;
 b=slmLCuFfLqFs1jPkLugSfVgSyRbzM2PfSxpedMCBViP9EOgWwR9gLXVGqs1fZ1EJrXgZVdv93ZJoLcVNnV7ql+XGd2XXRELF7XzGvnILj98b7UY4U/XZZqw982p2NELhZ1r0i2nlZ54vDK1ZBEmfTKczZ8FudIv6fACwXv384jE=
Received: from CY4PR11MB1751.namprd11.prod.outlook.com (10.175.81.9) by
 CY4PR11MB1750.namprd11.prod.outlook.com (10.175.81.8) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
 15.1.947.12; Mon, 6 Mar 2017 16:25:40 +0000
Received: from CY4PR11MB1751.namprd11.prod.outlook.com ([10.175.81.9]) by
 CY4PR11MB1751.namprd11.prod.outlook.com ([10.175.81.9]) with mapi id
 15.01.0947.020; Mon, 6 Mar 2017 16:25:40 +0000
From: Patrick Farrell <paf@cray.com>
To: James Simmons <jsimmons@infradead.org>, simran singhal
	<singhalsimran0@gmail.com>
CC: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"oleg.drokin@intel.com" <oleg.drokin@intel.com>,
	"outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
	"lustre-devel@lists.lustre.org" <lustre-devel@lists.lustre.org>
Subject: Re: [lustre-devel] [PATCH 5/5] staging: lustre: osc_page.c: Use
 list_for_each_entry_safe
Thread-Topic: [lustre-devel] [PATCH 5/5] staging: lustre: osc_page.c: Use
 list_for_each_entry_safe
Thread-Index: AQHSlo1WNBfn5ly2bUmn8BOeBflDDqGH/d3J
Date: Mon, 6 Mar 2017 16:25:39 +0000
Message-ID: <CY4PR11MB1751BD9D87BE42A4E9FEEDA5CB2C0@CY4PR11MB1751.namprd11.prod.outlook.com>
References: <1488733610-22289-1-git-send-email-singhalsimran0@gmail.com>
	<1488733610-22289-6-git-send-email-singhalsimran0@gmail.com>,<alpine.LFD.2.20.1703061512070.30144@casper.infradead.org>
In-Reply-To: <alpine.LFD.2.20.1703061512070.30144@casper.infradead.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: infradead.org; dkim=none (message not signed)
 header.d=none;infradead.org; dmarc=none action=none header.from=cray.com;
x-originating-ip: [136.162.34.1]
x-ms-office365-filtering-correlation-id: c59b68af-ce53-43f9-3651-08d464ad6dd3
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001);SRVR:CY4PR11MB1750;
x-microsoft-exchange-diagnostics: 1;CY4PR11MB1750;7:LN13dFAVTbnhJvSl1tRxFEtuGWWfNYm/oymp+99jvTDJ+jmuJ0HoC6C6DFAnKfT5gMpMJ97rWsAoAjiSRb/kjMWCwj/CygGEbMAKyQBxnBvqi4K9yr7d7+CGn/pHVmLtmBkpgIMFAY54jueSFiRiEGshLMa/pZnKHjgrV8z6k5wRqxJeMORZKqWFNRTapveQALnojsIl1giVe6OetVmRF0UGjxavYHMpZ15Jfe2fef3/WOlNf7ByZXfpssd/vpQUu7nYC2QYf3mAi3IFvIp8VRvmyXR2LZSS9JsPkIh7GoDdvKVxizWM0E6A5pMvOsgZqKDjf2Dl5ZrwYfAd8/7Rgg==
x-microsoft-antispam-prvs: <CY4PR11MB1750E9A8BA375660FFDC7287CB2C0@CY4PR11MB1750.namprd11.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(215639381216008)(158342451672863)(9452136761055)(228905959029699);
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(6040375)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6041248)(20161123562025)(20161123564025)(20161123560025)(20161123558025)(20161123555025)(6072148);SRVR:CY4PR11MB1750;BCL:0;PCL:0;RULEID:;SRVR:CY4PR11MB1750;
x-forefront-prvs: 0238AEEDB0
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(7916002)(39450400003)(377454003)(53936002)(2900100001)(7906003)(3280700002)(3846002)(6116002)(2906002)(8936002)(102836003)(7696004)(6306002)(9686003)(39060400002)(54896002)(229853002)(236005)(6246003)(74316002)(81166006)(966004)(3660700001)(86362001)(575784001)(189998001)(8676002)(76176999)(50986999)(54356999)(6436002)(33656002)(2950100002)(6506006)(606005)(66066001)(54906002)(4326008)(99286003)(25786008)(55016002)(77096006)(122556002)(7736002)(92566002)(38730400002)(5660300001)(106116001)(13693001)(42262002);DIR:OUT;SFP:1102;SCL:1;SRVR:CY4PR11MB1750;H:CY4PR11MB1751.namprd11.prod.outlook.com;FPR:;SPF:None;MLV:ovrnspm;PTR:InfoNoRecords;LANG:en;
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: multipart/alternative;
	boundary="_000_CY4PR11MB1751BD9D87BE42A4E9FEEDA5CB2C0CY4PR11MB1751namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2017 16:25:39.8308
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e7b8488a-c0cd-4614-aae1-996bfabec247
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1750
Return-Path: paf@cray.com
X-OriginatorOrg: cray.com

--_000_CY4PR11MB1751BD9D87BE42A4E9FEEDA5CB2C0CY4PR11MB1751namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I would also dispute the logic in this particular Coccinelle script more ge=
nerally.


list_for_each_entry_safe and while(list_empty(&list) =3D=3D 0)  (or, more c=
learly, while(!list_empty(&list))) are NOT equivalent.


Unless I've misunderstood the "for" loop used, that will run once for each =
item in the list, 'while' will run until the list is empty.  They just aren=
't the same thing, and can't be swapped one for one in general.  Sure, some=
times the usage is equivalent, but this coccinelle script can at most flag =
candidates for a change (which must be checked), it can't be used to just g=
enerate patches.


- Patrick

________________________________
From: lustre-devel <lustre-devel-bounces@lists.lustre.org> on behalf of Jam=
es Simmons <jsimmons@infradead.org>
Sent: Monday, March 6, 2017 9:20:49 AM
To: simran singhal
Cc: devel@driverdev.osuosl.org; gregkh@linuxfoundation.org; linux-kernel@vg=
er.kernel.org; oleg.drokin@intel.com; outreachy-kernel@googlegroups.com; lu=
stre-devel@lists.lustre.org
Subject: Re: [lustre-devel] [PATCH 5/5] staging: lustre: osc_page.c: Use li=
st_for_each_entry_safe


> Doubly linked lists which are  iterated  using list_empty
> and list_entry macros have been replaced with list_for_each_entry_safe
> macro.
> This makes the iteration simpler and more readable.
>
> This patch replaces the while loop containing list_empty and list_entry
> with list_for_each_entry_safe.
>
> This was done with Coccinelle.
>
> @@
> expression E1;
> identifier I1, I2;
> type T;
> iterator name list_for_each_entry_safe;
> @@
>
> T *I1;
> + T *tmp;
> ...
> - while (list_empty(&E1) =3D=3D 0)
> + list_for_each_entry_safe (I1, tmp, &E1, I2)
> {
> ...when !=3D T *I1;
> - I1 =3D list_entry(E1.next, T, I2);
> ...
> }
>
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>

NAK!!!!!!

This change was reverted in commit

cd15dd6ef4ea11df87f717b8b1b83aaa738ec8af

Doing these while (list_empty(..)) to list_for_entry...
are not simple changes and have broken things in lustre
before. Unless you really understand the state machine of
the lustre code I don't recommend these kinds of change
for lustre.

> ---
>  drivers/staging/lustre/lustre/osc/osc_page.c | 11 ++++-------
>  1 file changed, 4 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/osc/osc_page.c b/drivers/stagi=
ng/lustre/lustre/osc/osc_page.c
> index ed8a0dc..e8b974f 100644
> --- a/drivers/staging/lustre/lustre/osc/osc_page.c
> +++ b/drivers/staging/lustre/lustre/osc/osc_page.c
> @@ -542,6 +542,7 @@ long osc_lru_shrink(const struct lu_env *env, struct =
client_obd *cli,
>        struct cl_object *clobj =3D NULL;
>        struct cl_page **pvec;
>        struct osc_page *opg;
> +     struct osc_page *tmp;
>        int maxscan =3D 0;
>        long count =3D 0;
>        int index =3D 0;
> @@ -572,7 +573,7 @@ long osc_lru_shrink(const struct lu_env *env, struct =
client_obd *cli,
>        if (force)
>                cli->cl_lru_reclaim++;
>        maxscan =3D min(target << 1, atomic_long_read(&cli->cl_lru_in_list=
));
> -     while (!list_empty(&cli->cl_lru_list)) {
> +     list_for_each_entry_safe(opg, tmp, &cli->cl_lru_list, ops_lru) {
>                struct cl_page *page;
>                bool will_free =3D false;
>
> @@ -582,8 +583,6 @@ long osc_lru_shrink(const struct lu_env *env, struct =
client_obd *cli,
>                if (--maxscan < 0)
>                        break;
>
> -             opg =3D list_entry(cli->cl_lru_list.next, struct osc_page,
> -                              ops_lru);
>                page =3D opg->ops_cl.cpl_page;
>                if (lru_page_busy(cli, page)) {
>                        list_move_tail(&opg->ops_lru, &cli->cl_lru_list);
> @@ -1043,6 +1042,7 @@ unsigned long osc_cache_shrink_scan(struct shrinker=
 *sk,
>  {
>        struct client_obd *stop_anchor =3D NULL;
>        struct client_obd *cli;
> +     struct client_obd *tmp;
>        struct lu_env *env;
>        long shrank =3D 0;
>        u16 refcheck;
> @@ -1059,10 +1059,7 @@ unsigned long osc_cache_shrink_scan(struct shrinke=
r *sk,
>                return SHRINK_STOP;
>
>        spin_lock(&osc_shrink_lock);
> -     while (!list_empty(&osc_shrink_list)) {
> -             cli =3D list_entry(osc_shrink_list.next, struct client_obd,
> -                              cl_shrink_list);
> -
> +     list_for_each_entry_safe(cli, tmp, &osc_shrink_list, cl_shrink_list=
) {
>                if (!stop_anchor)
>                        stop_anchor =3D cli;
>                else if (cli =3D=3D stop_anchor)
> --
> 2.7.4
>
>
_______________________________________________
lustre-devel mailing list
lustre-devel@lists.lustre.org
http://lists.lustre.org/listinfo.cgi/lustre-devel-lustre.org

--_000_CY4PR11MB1751BD9D87BE42A4E9FEEDA5CB2C0CY4PR11MB1751namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<meta content=3D"text/html; charset=3DUTF-8">
<style type=3D"text/css" style=3D"">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Arial,Helvetica,sans-serif">
<p>I would also dispute the logic in this particular Coccinelle script more=
 generally.</p>
<p><br>
</p>
<p>list_for_each_entry_safe and while(list_empty(&amp;list) =3D=3D&nbsp;0) =
&nbsp;(or, more clearly, while(!list_empty(&amp;list))) are NOT equivalent.=
</p>
<p><br>
</p>
<p>Unless I've misunderstood the &quot;for&quot; loop used, that will run o=
nce for each item in the list, 'while'&nbsp;will run until the list is empt=
y. &nbsp;They just aren't the same thing, and can't be swapped one for one =
in general.&nbsp; Sure, sometimes the usage is equivalent,
 but this coccinelle script can at most flag candidates for a change (which=
 must be checked), it can't be used to just generate patches.</p>
<p><br>
</p>
<p>- Patrick</p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> lustre-devel &lt;lu=
stre-devel-bounces@lists.lustre.org&gt; on behalf of James Simmons &lt;jsim=
mons@infradead.org&gt;<br>
<b>Sent:</b> Monday, March 6, 2017 9:20:49 AM<br>
<b>To:</b> simran singhal<br>
<b>Cc:</b> devel@driverdev.osuosl.org; gregkh@linuxfoundation.org; linux-ke=
rnel@vger.kernel.org; oleg.drokin@intel.com; outreachy-kernel@googlegroups.=
com; lustre-devel@lists.lustre.org<br>
<b>Subject:</b> Re: [lustre-devel] [PATCH 5/5] staging: lustre: osc_page.c:=
 Use list_for_each_entry_safe</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText"><br>
&gt; Doubly linked lists which are&nbsp; iterated&nbsp; using list_empty<br=
>
&gt; and list_entry macros have been replaced with list_for_each_entry_safe=
<br>
&gt; macro.<br>
&gt; This makes the iteration simpler and more readable.<br>
&gt; <br>
&gt; This patch replaces the while loop containing list_empty and list_entr=
y<br>
&gt; with list_for_each_entry_safe.<br>
&gt; <br>
&gt; This was done with Coccinelle.<br>
&gt; <br>
&gt; @@<br>
&gt; expression E1;<br>
&gt; identifier I1, I2;<br>
&gt; type T;<br>
&gt; iterator name list_for_each_entry_safe;<br>
&gt; @@<br>
&gt; <br>
&gt; T *I1;<br>
&gt; &#43; T *tmp;<br>
&gt; ...<br>
&gt; - while (list_empty(&amp;E1) =3D=3D 0)<br>
&gt; &#43; list_for_each_entry_safe (I1, tmp, &amp;E1, I2)<br>
&gt; {<br>
&gt; ...when !=3D T *I1;<br>
&gt; - I1 =3D list_entry(E1.next, T, I2);<br>
&gt; ...<br>
&gt; }<br>
&gt; <br>
&gt; Signed-off-by: simran singhal &lt;singhalsimran0@gmail.com&gt;<br>
<br>
NAK!!!!!!<br>
<br>
This change was reverted in commit <br>
<br>
cd15dd6ef4ea11df87f717b8b1b83aaa738ec8af<br>
<br>
Doing these while (list_empty(..)) to list_for_entry...<br>
are not simple changes and have broken things in lustre<br>
before. Unless you really understand the state machine of<br>
the lustre code I don't recommend these kinds of change<br>
for lustre.<br>
<br>
&gt; ---<br>
&gt;&nbsp; drivers/staging/lustre/lustre/osc/osc_page.c | 11 &#43;&#43;&#43=
;&#43;-------<br>
&gt;&nbsp; 1 file changed, 4 insertions(&#43;), 7 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/lustre/lustre/osc/osc_page.c b/drivers/st=
aging/lustre/lustre/osc/osc_page.c<br>
&gt; index ed8a0dc..e8b974f 100644<br>
&gt; --- a/drivers/staging/lustre/lustre/osc/osc_page.c<br>
&gt; &#43;&#43;&#43; b/drivers/staging/lustre/lustre/osc/osc_page.c<br>
&gt; @@ -542,6 &#43;542,7 @@ long osc_lru_shrink(const struct lu_env *env, =
struct client_obd *cli,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct cl_object *clobj =3D =
NULL;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct cl_page **pvec;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct osc_page *opg;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct osc_page *tmp;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int maxscan =3D 0;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; long count =3D 0;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int index =3D 0;<br>
&gt; @@ -572,7 &#43;573,7 @@ long osc_lru_shrink(const struct lu_env *env, =
struct client_obd *cli,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (force)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; cli-&gt;cl_lru_reclaim&#43;&#43;;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; maxscan =3D min(target &lt;&=
lt; 1, atomic_long_read(&amp;cli-&gt;cl_lru_in_list));<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp; while (!list_empty(&amp;cli-&gt;cl_lru_list)=
) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; list_for_each_entry_safe(opg, tmp, &amp;=
cli-&gt;cl_lru_list, ops_lru) {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct cl_page *page;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; bool will_free =3D false;<br>
&gt;&nbsp; <br>
&gt; @@ -582,8 &#43;583,6 @@ long osc_lru_shrink(const struct lu_env *env, =
struct client_obd *cli,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; if (--maxscan &lt; 0)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; break;<=
br>
&gt;&nbsp; <br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; opg =3D list_entry(cli-&gt;cl_lru_list.next, struct osc_page,<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ops_lru);<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; page =3D opg-&gt;ops_cl.cpl_page;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; if (lru_page_busy(cli, page)) {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; list_mo=
ve_tail(&amp;opg-&gt;ops_lru, &amp;cli-&gt;cl_lru_list);<br>
&gt; @@ -1043,6 &#43;1042,7 @@ unsigned long osc_cache_shrink_scan(struct s=
hrinker *sk,<br>
&gt;&nbsp; {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct client_obd *stop_anch=
or =3D NULL;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct client_obd *cli;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct client_obd *tmp;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct lu_env *env;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; long shrank =3D 0;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u16 refcheck;<br>
&gt; @@ -1059,10 &#43;1059,7 @@ unsigned long osc_cache_shrink_scan(struct =
shrinker *sk,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; return SHRINK_STOP;<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; spin_lock(&amp;osc_shrink_lo=
ck);<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp; while (!list_empty(&amp;osc_shrink_list)) {<=
br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; cli =3D list_entry(osc_shrink_list.next, struct client_obd,<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cl_shrink_list);<br>
&gt; -<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; list_for_each_entry_safe(cli, tmp, &amp;=
osc_shrink_list, cl_shrink_list) {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; if (!stop_anchor)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; stop_an=
chor =3D cli;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; else if (cli =3D=3D stop_anchor)<br>
&gt; -- <br>
&gt; 2.7.4<br>
&gt; <br>
&gt; <br>
_______________________________________________<br>
lustre-devel mailing list<br>
lustre-devel@lists.lustre.org<br>
<a href=3D"http://lists.lustre.org/listinfo.cgi/lustre-devel-lustre.org">ht=
tp://lists.lustre.org/listinfo.cgi/lustre-devel-lustre.org</a><br>
</div>
</span></font>
</body>
</html>

--_000_CY4PR11MB1751BD9D87BE42A4E9FEEDA5CB2C0CY4PR11MB1751namp_--

