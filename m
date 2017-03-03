X-GM-THRID: 6393296356207755264
X-Received: by 10.107.140.131 with SMTP id o125mr1518211iod.60.1488565957073;
        Fri, 03 Mar 2017 10:32:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.10.10 with SMTP id u10ls247834ioi.8.gmail; Fri, 03 Mar
 2017 10:32:36 -0800 (PST)
X-Received: by 10.107.131.35 with SMTP id f35mr1522787iod.68.1488565956361;
        Fri, 03 Mar 2017 10:32:36 -0800 (PST)
Received: by 10.202.207.202 with SMTP id f193msoig;
        Fri, 3 Mar 2017 09:11:16 -0800 (PST)
X-Received: by 10.200.45.211 with SMTP id q19mr1091079qta.60.1488561076168;
        Fri, 03 Mar 2017 09:11:16 -0800 (PST)
Return-Path: <David.Kershner@unisys.com>
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (mail-co1nam03on0059.outbound.protection.outlook.com. [104.47.40.59])
        by gmr-mx.google.com with ESMTPS id s64si159197pfk.0.2017.03.03.09.11.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 09:11:16 -0800 (PST)
Received-SPF: pass (google.com: domain of david.kershner@unisys.com designates 104.47.40.59 as permitted sender) client-ip=104.47.40.59;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@unisys.com;
       spf=pass (google.com: domain of david.kershner@unisys.com designates 104.47.40.59 as permitted sender) smtp.mailfrom=David.Kershner@unisys.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=unisys.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=unisys.com;
 s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=TVo6cp2vznaZv2iNFJonmDn6nDEpN0rz7zlfx21K/tk=;
 b=P+Tj5mMBCsNlK+D1Q7WgB+fgQYrjUaNG/G3MyApIbuY0N1gSguPckjJE0/1Tftn998VOyQhALUsgoTl+kQSX99Urd3z4785ZBdcZHDpgYtXyt/Q/UgCYQzcAuK1guf1J1R+2dG2yFhtoDASNZJcWKYhCuDxb8BsxvZT9OF4WiSE=
Received: from CY4PR07MB3176.namprd07.prod.outlook.com (10.172.115.142) by
 CY4PR07MB3176.namprd07.prod.outlook.com (10.172.115.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
 15.1.947.12; Fri, 3 Mar 2017 17:11:14 +0000
Received: from CY4PR07MB3176.namprd07.prod.outlook.com ([10.172.115.142]) by
 CY4PR07MB3176.namprd07.prod.outlook.com ([10.172.115.142]) with mapi id
 15.01.0947.012; Fri, 3 Mar 2017 17:11:14 +0000
From: "Kershner, David A" <David.Kershner@unisys.com>
To: Julia Lawall <julia.lawall@lip6.fr>, simran singhal
	<singhalsimran0@gmail.com>
CC: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	*S-Par-Maintainer <SParMaintainer@unisys.com>, "devel@driverdev.osuosl.org"
	<devel@driverdev.osuosl.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "Larry.Finger@lwfinger.net"
	<Larry.Finger@lwfinger.net>, "florian.c.schilhabel@googlemail.com"
	<florian.c.schilhabel@googlemail.com>, "outreachy-kernel@googlegroups.com"
	<outreachy-kernel@googlegroups.com>
Subject: RE: [Outreachy kernel] [PATCH v3 0/3] Replace "the the " with "the"
Thread-Topic: [Outreachy kernel] [PATCH v3 0/3] Replace "the the " with "the"
Thread-Index: AQHSlDcZfMTqs3PZGki9QhsmkXRy8aGDSASAgAARr8A=
Date: Fri, 3 Mar 2017 17:11:14 +0000
Message-ID: <CY4PR07MB3176228C682A03BC90D95BD7F02B0@CY4PR07MB3176.namprd07.prod.outlook.com>
References: <1488556746-599-1-git-send-email-singhalsimran0@gmail.com>
 <alpine.DEB.2.20.1703031706500.3490@hadrien>
In-Reply-To: <alpine.DEB.2.20.1703031706500.3490@hadrien>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: lip6.fr; dkim=none (message not signed)
 header.d=none;lip6.fr; dmarc=none action=none header.from=unisys.com;
x-originating-ip: [192.63.205.144]
x-ms-office365-filtering-correlation-id: 1b025805-8142-4f69-91d2-08d462584cad
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001);SRVR:CY4PR07MB3176;
x-microsoft-exchange-diagnostics: 1;CY4PR07MB3176;7:if2mjeqzLg7SSh6vxtYvuFu+6M6K4/FSLNuUCsqqEeQHsxLFJnVRTIMVu3WqTFWTBEKP24ye5XNNuu072g67gl49vlKyzC6QgdJP5z2qemqZCAMncCjVNdTlIaBj73661EirP6ed0+44E/E0C/nscZfuOYpIxECHrFK0aDD/1efS9QLq4hn7zUgn3Hzn5QQPRcc6aczKOGfVEsHyszHYcsq1BLU7AbryxNKfvD892VQdNDP9UjIS+VsXO3cIBiNoYoGnon7XVbYhPylEZGVuGVuXuCtF41KZ+vh8I09NaK1RA3E5wtpgifqY1rM/tgka6AsaNAuuTaQrdPihUts9Tg==
x-microsoft-antispam-prvs: <CY4PR07MB31760FB4ADC2F54F82A8F6E2F02B0@CY4PR07MB3176.namprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(215639381216008)(9452136761055)(228788266533470)(174360191007938)(788757137089)(211936372134217)(8415204561270);
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(6040375)(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001)(6041248)(20161123560025)(20161123564025)(20161123562025)(20161123558025)(20161123555025)(6072148);SRVR:CY4PR07MB3176;BCL:0;PCL:0;RULEID:;SRVR:CY4PR07MB3176;
x-forefront-prvs: 0235CBE7D0
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(6009001)(7916002)(39860400002)(39410400002)(39850400002)(39450400003)(39840400002)(377454003)(24454002)(13464003)(122556002)(81166006)(2900100001)(4326008)(39060400002)(106116001)(38730400002)(53546006)(8936002)(8676002)(6246003)(6436002)(53936002)(25786008)(3280700002)(74316002)(6506006)(229853002)(3660700001)(7696004)(92566002)(77096006)(99286003)(2950100002)(6306002)(55016002)(54906002)(9686003)(97736004)(106356001)(86362001)(3846002)(33656002)(102836003)(2906002)(50986999)(305945005)(54356999)(7736002)(66066001)(189998001)(76176999)(6116002)(5660300001);DIR:OUT;SFP:1101;SCL:1;SRVR:CY4PR07MB3176;H:CY4PR07MB3176.namprd07.prod.outlook.com;FPR:;SPF:None;MLV:ovrnspm;PTR:InfoNoRecords;LANG:en;
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: unisys.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2017 17:11:14.8319
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8d894c2b-238f-490b-8dd1-d93898c5bf83
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR07MB3176



> -----Original Message-----
> From: Julia Lawall [mailto:julia.lawall@lip6.fr]
> Sent: Friday, March 3, 2017 11:07 AM
> To: simran singhal <singhalsimran0@gmail.com>
> Cc: gregkh@linuxfoundation.org; Kershner, David A
> <David.Kershner@unisys.com>; *S-Par-Maintainer
> <SParMaintainer@unisys.com>; devel@driverdev.osuosl.org; linux-
> kernel@vger.kernel.org; Larry.Finger@lwfinger.net;
> florian.c.schilhabel@googlemail.com; outreachy-kernel@googlegroups.com
> Subject: Re: [Outreachy kernel] [PATCH v3 0/3] Replace "the the " with "t=
he"
>=20
>=20
>=20
> On Fri, 3 Mar 2017, simran singhal wrote:
>=20
> > This patch series replace "the the " with "the" in various drivers.
> >
> > v3:
> >   -Resend the complete patch series.
>=20
> Acked-by: Julia Lawall <julia.lawall@lip6.fr>

Acked-by: David Kershner <david.kershner@unisys.com>

>=20
> >
> >
> > simran singhal (3):
> >   staging: wlan-ng: Replace "the the " with "the"
> >   staging: rtl8192u: Replace "the the " with "the"
> >   staging: unisys: Replace "the the " with "the"
> >
> >  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 2 +-
> >  drivers/staging/unisys/visorbus/visorbus_main.c   | 2 +-
> >  drivers/staging/wlan-ng/prism2sta.c               | 2 +-
> >  3 files changed, 3 insertions(+), 3 deletions(-)
> >
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send =
an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/1488556746-599-1-
> git-send-email-singhalsimran0%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

