X-GM-THRID: 6394061646033059840
X-Received: by 10.200.43.17 with SMTP id 17mr6708248qtu.11.1488882059191;
        Tue, 07 Mar 2017 02:20:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.226 with SMTP id c89ls43351otb.2.gmail; Tue, 07 Mar
 2017 02:20:58 -0800 (PST)
X-Received: by 10.129.87.3 with SMTP id l3mr8705021ywb.0.1488882058711;
        Tue, 07 Mar 2017 02:20:58 -0800 (PST)
Return-Path: <andreas.dilger@intel.com>
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id 2si579170pfz.1.2017.03.07.02.20.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 02:20:58 -0800 (PST)
Received-SPF: pass (google.com: domain of andreas.dilger@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Mar 2017 02:20:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,258,1484035200"; 
   d="scan'208";a="1138951435"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
  by fmsmga002.fm.intel.com with ESMTP; 07 Mar 2017 02:20:58 -0800
Received: from fmsmsx112.amr.corp.intel.com (10.18.116.6) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.248.2; Tue, 7 Mar 2017 02:20:58 -0800
Received: from FMSMSX109.amr.corp.intel.com ([169.254.15.115]) by
 FMSMSX112.amr.corp.intel.com ([169.254.5.137]) with mapi id 14.03.0248.002;
 Tue, 7 Mar 2017 02:20:57 -0800
From: "Dilger, Andreas" <andreas.dilger@intel.com>
To: James Simmons <jsimmons@infradead.org>
CC: simran singhal <singhalsimran0@gmail.com>, "Drokin, Oleg"
	<oleg.drokin@intel.com>, Greg KH <gregkh@linuxfoundation.org>, lustre-devel
	<lustre-devel@lists.lustre.org>, "devel@driverdev.osuosl.org"
	<devel@driverdev.osuosl.org>, LKML <linux-kernel@vger.kernel.org>,
	"outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH 5/5] staging: lustre: osc_page.c:  Use
 list_for_each_entry_safe
Thread-Topic: [PATCH 5/5] staging: lustre: osc_page.c:  Use
 list_for_each_entry_safe
Thread-Index: AQHSldKnEzkL4xw9cU+yt2hZygaE0KGIdO+AgAE+ioA=
Date: Tue, 7 Mar 2017 10:20:56 +0000
Message-ID: <64A47B25-17B2-4ED8-9066-6796E97768A0@intel.com>
References: <1488733610-22289-1-git-send-email-singhalsimran0@gmail.com>
 <1488733610-22289-6-git-send-email-singhalsimran0@gmail.com>
 <alpine.LFD.2.20.1703061512070.30144@casper.infradead.org>
In-Reply-To: <alpine.LFD.2.20.1703061512070.30144@casper.infradead.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.252.202.15]
Content-Type: text/plain; charset="us-ascii"
Content-ID: <3CA356C15D353245B12D4DEE5B23982A@intel.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Return-Path: andreas.dilger@intel.com

On Mar 6, 2017, at 08:20, James Simmons <jsimmons@infradead.org> wrote:
>=20
>>=20
>> Doubly linked lists which are  iterated  using list_empty
>> and list_entry macros have been replaced with list_for_each_entry_safe
>> macro.
>> This makes the iteration simpler and more readable.
>>=20
>> This patch replaces the while loop containing list_empty and list_entry
>> with list_for_each_entry_safe.
>>=20
>> This was done with Coccinelle.
>>=20
>> @@
>> expression E1;
>> identifier I1, I2;
>> type T;
>> iterator name list_for_each_entry_safe;
>> @@
>>=20
>> T *I1;
>> + T *tmp;
>> ...
>> - while (list_empty(&E1) =3D=3D 0)
>> + list_for_each_entry_safe (I1, tmp, &E1, I2)
>> {
>> ...when !=3D T *I1;
>> - I1 =3D list_entry(E1.next, T, I2);
>> ...
>> }
>>=20
>> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>=20
> NAK!!!!!!
>=20
> This change was reverted in commit=20
>=20
> cd15dd6ef4ea11df87f717b8b1b83aaa738ec8af
>=20
> Doing these while (list_empty(..)) to list_for_entry...
> are not simple changes and have broken things in lustre
> before. Unless you really understand the state machine of
> the lustre code I don't recommend these kinds of change
> for lustre.

It may be useful to add a comment to these cases where the while() loop can=
not be
replaced by list_for_each_entry_safe() (with details of why that is the cas=
e) to
avoid such optimization attempts again in the future.

Cheers, Andreas

>=20
>> ---
>> drivers/staging/lustre/lustre/osc/osc_page.c | 11 ++++-------
>> 1 file changed, 4 insertions(+), 7 deletions(-)
>>=20
>> diff --git a/drivers/staging/lustre/lustre/osc/osc_page.c b/drivers/stag=
ing/lustre/lustre/osc/osc_page.c
>> index ed8a0dc..e8b974f 100644
>> --- a/drivers/staging/lustre/lustre/osc/osc_page.c
>> +++ b/drivers/staging/lustre/lustre/osc/osc_page.c
>> @@ -542,6 +542,7 @@ long osc_lru_shrink(const struct lu_env *env, struct=
 client_obd *cli,
>> 	struct cl_object *clobj =3D NULL;
>> 	struct cl_page **pvec;
>> 	struct osc_page *opg;
>> +	struct osc_page *tmp;
>> 	int maxscan =3D 0;
>> 	long count =3D 0;
>> 	int index =3D 0;
>> @@ -572,7 +573,7 @@ long osc_lru_shrink(const struct lu_env *env, struct=
 client_obd *cli,
>> 	if (force)
>> 		cli->cl_lru_reclaim++;
>> 	maxscan =3D min(target << 1, atomic_long_read(&cli->cl_lru_in_list));
>> -	while (!list_empty(&cli->cl_lru_list)) {
>> +	list_for_each_entry_safe(opg, tmp, &cli->cl_lru_list, ops_lru) {
>> 		struct cl_page *page;
>> 		bool will_free =3D false;
>>=20
>> @@ -582,8 +583,6 @@ long osc_lru_shrink(const struct lu_env *env, struct=
 client_obd *cli,
>> 		if (--maxscan < 0)
>> 			break;
>>=20
>> -		opg =3D list_entry(cli->cl_lru_list.next, struct osc_page,
>> -				 ops_lru);
>> 		page =3D opg->ops_cl.cpl_page;
>> 		if (lru_page_busy(cli, page)) {
>> 			list_move_tail(&opg->ops_lru, &cli->cl_lru_list);
>> @@ -1043,6 +1042,7 @@ unsigned long osc_cache_shrink_scan(struct shrinke=
r *sk,
>> {
>> 	struct client_obd *stop_anchor =3D NULL;
>> 	struct client_obd *cli;
>> +	struct client_obd *tmp;
>> 	struct lu_env *env;
>> 	long shrank =3D 0;
>> 	u16 refcheck;
>> @@ -1059,10 +1059,7 @@ unsigned long osc_cache_shrink_scan(struct shrink=
er *sk,
>> 		return SHRINK_STOP;
>>=20
>> 	spin_lock(&osc_shrink_lock);
>> -	while (!list_empty(&osc_shrink_list)) {
>> -		cli =3D list_entry(osc_shrink_list.next, struct client_obd,
>> -				 cl_shrink_list);
>> -
>> +	list_for_each_entry_safe(cli, tmp, &osc_shrink_list, cl_shrink_list) {
>> 		if (!stop_anchor)
>> 			stop_anchor =3D cli;
>> 		else if (cli =3D=3D stop_anchor)
>> --=20
>> 2.7.4

Cheers, Andreas
--
Andreas Dilger
Lustre Principal Architect
Intel Corporation








