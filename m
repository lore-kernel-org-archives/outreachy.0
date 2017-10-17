X-GM-THRID: 6473410411176656896
X-Received: by 10.55.33.138 with SMTP id f10mr11939782qki.1.1508280081275;
        Tue, 17 Oct 2017 15:41:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.56.148 with SMTP id f142ls1237395qka.10.gmail; Tue, 17 Oct
 2017 15:41:20 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAOxusY4NiwuMT4z6oRnedPrgvyLl2SctTdxpXma5jQfWSYCShZLSRRdWgUSqoul2X96UsK
X-Received: by 10.55.169.212 with SMTP id s203mr12008655qke.15.1508280080627;
        Tue, 17 Oct 2017 15:41:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508280080; cv=none;
        d=google.com; s=arc-20160816;
        b=oHFZxXAKCbYLqdtZQGcHo3L61yAtd6eWBdNAWW8x+5bZkwi5BHUdRljf+yLwP3cZyR
         jAxEVeNSnTaJ9RqgZsxa6n7b1Og5y2Cuha+PvoF1x32Tzfab84NI/WX8/rUkMSnl1qKm
         M+Bee9YEvSGLCzUkGY8Adzj0wK7ycE7n7AM+6pnRmGBfCUGsfaosiI2jf65MIQAEgtZh
         jP/QplSAFdB53+POC9Y7xkANIleRD9Bi0d7BibT8gCO3ixlDwO1YuWsKGpp3t/McHwhK
         C5U0jZ0n6euVn23ePzFDP+QogDaIBIDZppgu6qHfsP0L/zyU/lJ67XS+zIQdMp0kID/8
         ybgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:arc-authentication-results;
        bh=IKybpsWq+bQL6IisktM9sHzdlcBa6yrS0pXV5PEQBzc=;
        b=COm3Y5siui3nDek87a60PxoNyAIRXRaj2TLtb4nO4TCtXcbysrB1o7HV3NincrNUWk
         BWmk83B2cdkydl6+XwmQKaVxCo3I/IcjblYjNYW9YryzbLgTTViB8MU7lo3nVtRzKQkA
         S3AstGExd2/27BX4Vpx4VununUbQxxoDahMy3pMooswYLGSuG9pWaNLtf195y9VNyFOd
         0YyVXwx0SZs2BsU+bIdWQTra7EBWob/wAlcz/NRI8VG5aVdX1yfxhfSlfYX8TLsVlJb2
         BwIzB9iK+lMZSL8e/Ft3KdAyD2jQKt3tgfkyQRb5sGuEn2Mwr2Q41wWC5QYtDzVuQNPd
         s//w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Return-Path: <andreas.dilger@intel.com>
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id m68si568537qke.2.2017.10.17.15.41.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 15:41:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Oct 2017 15:41:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,392,1503385200"; 
   d="scan'208";a="1231937357"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
  by fmsmga002.fm.intel.com with ESMTP; 17 Oct 2017 15:41:18 -0700
Received: from fmsmsx158.amr.corp.intel.com (10.18.116.75) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.319.2; Tue, 17 Oct 2017 15:41:18 -0700
Received: from FMSMSX109.amr.corp.intel.com ([169.254.15.12]) by
 fmsmsx158.amr.corp.intel.com ([169.254.15.112]) with mapi id 14.03.0319.002;
 Tue, 17 Oct 2017 15:41:18 -0700
From: "Dilger, Andreas" <andreas.dilger@intel.com>
To: Aastha Gupta <aastha.gupta4104@gmail.com>
CC: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
	"Drokin, Oleg" <oleg.drokin@intel.com>, James Simmons
	<jsimmons@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2 01/10] staging: lustre: fix incorrect multi-line
 comment style
Thread-Topic: [PATCH v2 01/10] staging: lustre: fix incorrect multi-line
 comment style
Thread-Index: AQHTQxMHTRju4VYZuE6LttB9REZSo6LpIUmA
Date: Tue, 17 Oct 2017 22:41:17 +0000
Message-ID: <71E452E7-81DE-4583-A870-156935499A38@intel.com>
References: <1507782683-12754-1-git-send-email-aastha.gupta4104@gmail.com>
 <1507782683-12754-2-git-send-email-aastha.gupta4104@gmail.com>
In-Reply-To: <1507782683-12754-2-git-send-email-aastha.gupta4104@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.252.142.85]
Content-Type: text/plain; charset="us-ascii"
Content-ID: <AF463F7789AF9B40ABABE8545B143497@intel.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Return-Path: andreas.dilger@intel.com

On Oct 11, 2017, at 22:31, Aastha Gupta <aastha.gupta4104@gmail.com> wrote:
>=20
> This patch fixes the checkpatch.pl warning:
>=20
> WARNING: block comments use a trailing */ on a separate line
>=20
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>

Reviewed-by: Andreas Dilger <andreas.dilger@intel.com>

> ---
> .../lustre/lustre/include/lustre_dlm_flags.h       |  6 ++-
> .../staging/lustre/lustre/include/lustre_errno.h   | 51 ++++++++---------=
-----
> 2 files changed, 21 insertions(+), 36 deletions(-)
>=20
> diff --git a/drivers/staging/lustre/lustre/include/lustre_dlm_flags.h b/d=
rivers/staging/lustre/lustre/include/lustre_dlm_flags.h
> index 11331ae..635eca9 100644
> --- a/drivers/staging/lustre/lustre/include/lustre_dlm_flags.h
> +++ b/drivers/staging/lustre/lustre/include/lustre_dlm_flags.h
> @@ -136,7 +136,8 @@
> #define ldlm_clear_cancel_on_block(_l)  LDLM_CLEAR_FLAG((_l), 1ULL << 23)
>=20
> /**
> - * measure lock contention and return -EUSERS if locking contention is h=
igh */
> + * measure lock contention and return -EUSERS if locking contention is h=
igh
> + */
> #define LDLM_FL_DENY_ON_CONTENTION        0x0000000040000000ULL /* bit 30=
 */
> #define ldlm_is_deny_on_contention(_l)    LDLM_TEST_FLAG((_l), 1ULL << 30=
)
> #define ldlm_set_deny_on_contention(_l)   LDLM_SET_FLAG((_l), 1ULL << 30)
> @@ -144,7 +145,8 @@
>=20
> /**
>  * These are flags that are mapped into the flags and ASTs of blocking
> - * locks Add FL_DISCARD to blocking ASTs */
> + * locks Add FL_DISCARD to blocking ASTs
> + */
> #define LDLM_FL_AST_DISCARD_DATA        0x0000000080000000ULL /* bit 31 *=
/
> #define ldlm_is_ast_discard_data(_l)    LDLM_TEST_FLAG((_l), 1ULL << 31)
> #define ldlm_set_ast_discard_data(_l)   LDLM_SET_FLAG((_l), 1ULL << 31)
> diff --git a/drivers/staging/lustre/lustre/include/lustre_errno.h b/drive=
rs/staging/lustre/lustre/include/lustre_errno.h
> index 35aefa2..59fbb9f 100644
> --- a/drivers/staging/lustre/lustre/include/lustre_errno.h
> +++ b/drivers/staging/lustre/lustre/include/lustre_errno.h
> @@ -70,16 +70,14 @@
> #define LUSTRE_EROFS		30	/* Read-only file system */
> #define LUSTRE_EMLINK		31	/* Too many links */
> #define LUSTRE_EPIPE		32	/* Broken pipe */
> -#define LUSTRE_EDOM		33	/* Math argument out of domain of
> -					   func */
> +#define LUSTRE_EDOM		33	/* Math argument out of func domain */
> #define LUSTRE_ERANGE		34	/* Math result not representable */
> #define LUSTRE_EDEADLK		35	/* Resource deadlock would occur */
> #define LUSTRE_ENAMETOOLONG	36	/* File name too long */
> #define LUSTRE_ENOLCK		37	/* No record locks available */
> #define LUSTRE_ENOSYS		38	/* Function not implemented */
> #define LUSTRE_ENOTEMPTY	39	/* Directory not empty */
> -#define LUSTRE_ELOOP		40	/* Too many symbolic links
> -					   encountered */
> +#define LUSTRE_ELOOP		40	/* Too many symbolic links found */
> #define LUSTRE_ENOMSG		42	/* No message of desired type */
> #define LUSTRE_EIDRM		43	/* Identifier removed */
> #define LUSTRE_ECHRNG		44	/* Channel number out of range */
> @@ -112,23 +110,17 @@
> #define LUSTRE_EMULTIHOP	72	/* Multihop attempted */
> #define LUSTRE_EDOTDOT		73	/* RFS specific error */
> #define LUSTRE_EBADMSG		74	/* Not a data message */
> -#define LUSTRE_EOVERFLOW	75	/* Value too large for defined data
> -					   type */
> +#define LUSTRE_EOVERFLOW	75	/* Value too large for data type */
> #define LUSTRE_ENOTUNIQ		76	/* Name not unique on network */
> #define LUSTRE_EBADFD		77	/* File descriptor in bad state */
> #define LUSTRE_EREMCHG		78	/* Remote address changed */
> -#define LUSTRE_ELIBACC		79	/* Can not access a needed shared
> -					   library */
> -#define LUSTRE_ELIBBAD		80	/* Accessing a corrupted shared
> -					   library */
> +#define LUSTRE_ELIBACC		79	/* Can't access needed shared library */
> +#define LUSTRE_ELIBBAD		80	/* Access corrupted shared library */
> #define LUSTRE_ELIBSCN		81	/* .lib section in a.out corrupted */
> -#define LUSTRE_ELIBMAX		82	/* Attempting to link in too many shared
> -					   libraries */
> -#define LUSTRE_ELIBEXEC		83	/* Cannot exec a shared library
> -					   directly */
> +#define LUSTRE_ELIBMAX		82	/* Trying to link too many libraries */
> +#define LUSTRE_ELIBEXEC		83	/* Cannot exec a shared lib directly */
> #define LUSTRE_EILSEQ		84	/* Illegal byte sequence */
> -#define LUSTRE_ERESTART		85	/* Interrupted system call should be
> -					   restarted */
> +#define LUSTRE_ERESTART		85	/* Restart interrupted system call */
> #define LUSTRE_ESTRPIPE		86	/* Streams pipe error */
> #define LUSTRE_EUSERS		87	/* Too many users */
> #define LUSTRE_ENOTSOCK		88	/* Socket operation on non-socket */
> @@ -138,26 +130,20 @@
> #define LUSTRE_ENOPROTOOPT	92	/* Protocol not available */
> #define LUSTRE_EPROTONOSUPPORT	93	/* Protocol not supported */
> #define LUSTRE_ESOCKTNOSUPPORT	94	/* Socket type not supported */
> -#define LUSTRE_EOPNOTSUPP	95	/* Operation not supported on transport
> -					   endpoint */
> +#define LUSTRE_EOPNOTSUPP	95	/* Operation not supported */
> #define LUSTRE_EPFNOSUPPORT	96	/* Protocol family not supported */
> -#define LUSTRE_EAFNOSUPPORT	97	/* Address family not supported by
> -					   protocol */
> +#define LUSTRE_EAFNOSUPPORT	97	/* Address family not supported */
> #define LUSTRE_EADDRINUSE	98	/* Address already in use */
> #define LUSTRE_EADDRNOTAVAIL	99	/* Cannot assign requested address */
> #define LUSTRE_ENETDOWN		100	/* Network is down */
> #define LUSTRE_ENETUNREACH	101	/* Network is unreachable */
> -#define LUSTRE_ENETRESET	102	/* Network dropped connection because of
> -					   reset */
> +#define LUSTRE_ENETRESET	102	/* Network connection drop for reset */
> #define LUSTRE_ECONNABORTED	103	/* Software caused connection abort */
> #define LUSTRE_ECONNRESET	104	/* Connection reset by peer */
> #define LUSTRE_ENOBUFS		105	/* No buffer space available */
> -#define LUSTRE_EISCONN		106	/* Transport endpoint is already
> -					   connected */
> -#define LUSTRE_ENOTCONN		107	/* Transport endpoint is not
> -					   connected */
> -#define LUSTRE_ESHUTDOWN	108	/* Cannot send after transport endpoint
> -					   shutdown */
> +#define LUSTRE_EISCONN		106	/* Transport endpoint is connected */
> +#define LUSTRE_ENOTCONN		107	/* Transport endpoint not connected */
> +#define LUSTRE_ESHUTDOWN	108	/* Cannot send after shutdown */
> #define LUSTRE_ETOOMANYREFS	109	/* Too many references: cannot splice */
> #define LUSTRE_ETIMEDOUT	110	/* Connection timed out */
> #define LUSTRE_ECONNREFUSED	111	/* Connection refused */
> @@ -185,8 +171,7 @@
> #define LUSTRE_ERESTARTNOINTR	513
> #define LUSTRE_ERESTARTNOHAND	514	/* restart if no handler.. */
> #define LUSTRE_ENOIOCTLCMD	515	/* No ioctl command */
> -#define LUSTRE_ERESTART_RESTARTBLOCK 516 /* restart by calling
> -					    sys_restart_syscall */
> +#define LUSTRE_ERESTART_RESTARTBLOCK 516 /* restart via sys_restart_sysc=
all */
> #define LUSTRE_EBADHANDLE	521	/* Illegal NFS file handle */
> #define LUSTRE_ENOTSYNC		522	/* Update synchronization mismatch */
> #define LUSTRE_EBADCOOKIE	523	/* Cookie is stale */
> @@ -194,10 +179,8 @@
> #define LUSTRE_ETOOSMALL	525	/* Buffer or request is too small */
> #define LUSTRE_ESERVERFAULT	526	/* An untranslatable error occurred */
> #define LUSTRE_EBADTYPE		527	/* Type not supported by server */
> -#define LUSTRE_EJUKEBOX		528	/* Request initiated, but will not
> -					   complete before timeout */
> -#define LUSTRE_EIOCBQUEUED	529	/* iocb queued, will get completion
> -					   event */
> +#define LUSTRE_EJUKEBOX		528	/* Request won't finish until timeout */
> +#define LUSTRE_EIOCBQUEUED	529	/* iocb queued await completion event */
> #define LUSTRE_EIOCBRETRY	530	/* iocb queued, will trigger a retry */
>=20
> /*
> --=20
> 2.7.4
>=20

Cheers, Andreas
--
Andreas Dilger
Lustre Principal Architect
Intel Corporation








