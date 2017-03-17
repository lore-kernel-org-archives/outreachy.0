X-GM-THRID: 6398158236087746560
X-Received: by 10.157.48.57 with SMTP id d54mr6026674otc.8.1489729730680;
        Thu, 16 Mar 2017 22:48:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.170.68 with SMTP id y4ls310058iti.0.canary-gmail; Thu, 16
 Mar 2017 22:48:50 -0700 (PDT)
X-Received: by 10.99.193.17 with SMTP id w17mr6479402pgf.85.1489729729969;
        Thu, 16 Mar 2017 22:48:49 -0700 (PDT)
Received: by 10.202.83.134 with SMTP id h128msoib;
        Thu, 16 Mar 2017 21:29:20 -0700 (PDT)
X-Received: by 10.99.222.21 with SMTP id f21mr6978163pgg.23.1489724960664;
        Thu, 16 Mar 2017 21:29:20 -0700 (PDT)
Return-Path: <oleg.drokin@intel.com>
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id 2si1218111pfz.1.2017.03.16.21.29.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Mar 2017 21:29:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of oleg.drokin@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@intel.com;
       spf=pass (google.com: domain of oleg.drokin@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=oleg.drokin@intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=intel;
  t=1489724960; x=1521260960;
  h=subject:mime-version:from:in-reply-to:date:cc:
   content-transfer-encoding:message-id:references:to;
  bh=B7VSnebmn7peG95H8wTWWv/KFuGpKywUQ4xSbUgRCE4=;
  b=lYNVA0c7mHUZwWPZy1Z0vxgGc/0q05JXzzM7Ea4p/ST488ijoAE7sPo8
   1tUwV4RshpvW+W7e69b+FvstOT7lZw==;
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Mar 2017 21:29:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,175,1486454400"; 
   d="scan'208";a="78063784"
Received: from deedenfe-mobl.amr.corp.intel.com (HELO intel-vm.localnet) ([10.255.65.230])
  by fmsmga006.fm.intel.com with ESMTP; 16 Mar 2017 21:29:19 -0700
Received: from [192.168.1.140] ([192.168.1.140])
	(authenticated bits=0)
	by intel-vm.localnet (8.15.2/8.15.2) with ESMTPSA id v2H4TGNB021841
	(version=TLSv1 cipher=ECDHE-RSA-AES128-SHA bits=128 verify=NO);
	Fri, 17 Mar 2017 00:29:17 -0400
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: lustre: libcfs: Define pr_fmt() to include relevant name
Mime-Version: 1.0 (Apple Message framework v1283)
Content-Type: text/plain; charset=us-ascii
From: Oleg Drokin <oleg.drokin@intel.com>
In-Reply-To: <alpine.DEB.2.20.1703161945080.3497@hadrien>
Date: Fri, 17 Mar 2017 00:29:15 -0400
Cc: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>,
        <andreas.dilger@intel.com>, <jsimmons@infradead.org>,
        <gregkh@linuxfoundation.org>, <outreachy-kernel@googlegroups.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <77411B13-6C39-4106-8BE3-76678931D89F@intel.com>
References: <cover.1489686964.git.narcisaanamaria12@gmail.com> <c9dc3ba5eb0d36a8ac8bef36d007d9715075af5b.1489686964.git.narcisaanamaria12@gmail.com> <alpine.DEB.2.20.1703161945080.3497@hadrien>
To: Julia Lawall <Julia.Lawall@lip6.fr>
X-Mailer: Apple Mail (2.1283)


On Mar 16, 2017, at 2:45 PM, Julia Lawall wrote:

>=20
>=20
> On Thu, 16 Mar 2017, Narcisa Ana Maria Vasile wrote:
>=20
>> Define a pr_fmt() for tracefile.c
>> Remove redundant prefix 'Lustre' from pr_*() calls.
>>=20
>> Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
>> ---
>> drivers/staging/lustre/lnet/libcfs/tracefile.c | 13 +++++++------
>> 1 file changed, 7 insertions(+), 6 deletions(-)
>>=20
>> diff --git a/drivers/staging/lustre/lnet/libcfs/tracefile.c =
b/drivers/staging/lustre/lnet/libcfs/tracefile.c
>> index c70f36e..72fd0c5 100644
>> --- a/drivers/staging/lustre/lnet/libcfs/tracefile.c
>> +++ b/drivers/staging/lustre/lnet/libcfs/tracefile.c
>> @@ -37,6 +37,7 @@
>>=20
>> #define DEBUG_SUBSYSTEM S_LNET
>> #define LUSTRE_TRACEFILE_PRIVATE
>> +#define pr_fmt(fmt) "Lustre: " fmt
>> #include "tracefile.h"
>>=20
>> #include "../../include/linux/libcfs/libcfs.h"
>> @@ -711,7 +712,7 @@ int cfs_tracefile_dump_all_pages(char *filename)
>> 	if (IS_ERR(filp)) {
>> 		rc =3D PTR_ERR(filp);
>> 		filp =3D NULL;
>> -		pr_err("LustreError: can't open %s for dump: rc %d\n", =
filename,
>> +		pr_err("Error: can't open %s for dump: rc %d\n", =
filename,
>> 		       rc);
>=20
> Maybe you don't really need the word Error.  It is not so common in =
pr_err
> calls.

In a way it does make one's life easier.
Typically when examining a log from a bugreport, first thing I do is
search for "LustreError" in it.
I guess I can search for just Lustre too, but that tends to hit a bunch =
of false
positives esp. if it's a long syslog with all sorts of other messages =
intermixed.

>=20
> julia
>=20
>> 		goto out;
>> 	}
>> @@ -892,7 +893,7 @@ int cfs_trace_daemon_command(char *str)
>> 	} else {
>> 		strcpy(cfs_tracefile, str);
>>=20
>> -		pr_info("Lustre: debug daemon will attempt to start =
writing to %s (%lukB max)\n",
>> +		pr_info("debug daemon will attempt to start writing to =
%s (%lukB max)\n",
>> 			cfs_tracefile,
>> 			(long)(cfs_tracefile_size >> 10));
>>=20
>> @@ -930,13 +931,13 @@ int cfs_trace_set_debug_mb(int mb)
>> 	struct cfs_trace_cpu_data *tcd;
>>=20
>> 	if (mb < num_possible_cpus()) {
>> -		pr_warn("Lustre: %d MB is too small for debug buffer =
size, setting it to %d MB.\n",
>> +		pr_warn("%d MB is too small for debug buffer size, =
setting it to %d MB.\n",
>> 			mb, num_possible_cpus());
>> 		mb =3D num_possible_cpus();
>> 	}
>>=20
>> 	if (mb > limit) {
>> -		pr_warn("Lustre: %d MB is too large for debug buffer =
size, setting it to %d MB.\n",
>> +		pr_warn("%d MB is too large for debug buffer size, =
setting it to %d MB.\n",
>> 			mb, limit);
>> 		mb =3D limit;
>> 	}
>> @@ -1048,7 +1049,7 @@ static int tracefiled(void *arg)
>> 		if (!list_empty(&pc.pc_pages)) {
>> 			int i;
>>=20
>> -			pr_alert("Lustre: trace pages aren't empty\n");
>> +			pr_alert("trace pages aren't empty\n");
>> 			pr_err("total cpus(%d): ", num_possible_cpus());
>> 			for (i =3D 0; i < num_possible_cpus(); i++)
>> 				if (cpu_online(i))
>> @@ -1118,7 +1119,7 @@ void cfs_trace_stop_thread(void)
>>=20
>> 	mutex_lock(&cfs_trace_thread_mutex);
>> 	if (thread_running) {
>> -		pr_info("Lustre: shutting down debug daemon =
thread...\n");
>> +		pr_info("shutting down debug daemon thread...\n");
>> 		atomic_set(&tctl->tctl_shutdown, 1);
>> 		wait_for_completion(&tctl->tctl_stop);
>> 		thread_running =3D 0;
>> --
>> 1.9.1
>>=20
>> --
>> You received this message because you are subscribed to the Google =
Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, =
send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to =
outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit =
https://groups.google.com/d/msgid/outreachy-kernel/c9dc3ba5eb0d36a8ac8bef3=
6d007d9715075af5b.1489686964.git.narcisaanamaria12%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>=20


