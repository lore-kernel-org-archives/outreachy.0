X-GM-THRID: 6473410411176656896
X-Received: by 10.99.127.93 with SMTP id p29mr983880pgn.157.1507621909443;
        Tue, 10 Oct 2017 00:51:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.159.211.11 with SMTP id bc11ls1325426plb.11.gmail; Tue, 10 Oct
 2017 00:51:48 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAURdZ6zdxupxZpaIf6K92AtSYbtKXjlY4GqIbkcJqMWVC2FjE5JuiMCusDwxE1RaNoh2EY
X-Received: by 10.98.64.91 with SMTP id n88mr850906pfa.58.1507621908344;
        Tue, 10 Oct 2017 00:51:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507621908; cv=none;
        d=google.com; s=arc-20160816;
        b=kmAW0Jv6hxH7A9MQyBdXGHZqRdirOQ9BrXndu4Jg5WaYrTfyEqKfhDCzywUpSVtUt+
         GezoI0mA5fSNaEGqqt7NTu619/06m0eTNR0coMmYjWZuAiRIHza7phaC8yAPGu4TF5V4
         sZVdUnGNyPLF8WSGRxzZNHDstaKLMJPVvjXbA9O+91WRSWf8M+gcq1k6TmJRmMkZNAAT
         cxzKDkf4xEl2gS6+57077b8bLZE/cEzibOB1d6Pl/pPLoAsLoVuEgUrFxRRnKCTzx0k4
         erIok8OuGCscGnPOXTDK0lGCCn/Wx07JVmGsVbzgrXRxnncLFAhsRaNweY7WrlZ1zTvx
         Bj8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:arc-authentication-results;
        bh=TveNKU/wix2YeSqKFtOBJEq4bF/P7FxfYISt527I2Js=;
        b=aq89q4AqgfMd0SPJpoT6uS8YknTYta4UPX56sHQX9An5TBRLjoI+2uollfv8718M16
         XP9ShlCL0gvHHmyo8FYB8PQs6bYYdtSQQ0LiQP6G8Pv4i6zXD8yeo5tCxUZtmxDKr+EH
         r/evTK9aVc5HW9nk0KJX8hzpejsVlaVwA9sUOpT3xm/nMD/hZVpNPFckdlpbqRzLsMqZ
         BFyBT8yn1O5jXRBMXK5w6bbUyPsmciVNdV5fTANZ3UO4aUx64Zff+wM1Bd0VdHpc0siq
         3yV4SlqsYpq5c9eO6WxQmeaEbhLh4SJDl9UbhoegLROYAJaV6PpbWLWsxNvDgF+tHOby
         tWLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Return-Path: <andreas.dilger@intel.com>
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id n63si1126202pfb.10.2017.10.10.00.51.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Oct 2017 00:51:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Oct 2017 00:51:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,503,1500966000"; 
   d="scan'208";a="1023544014"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
  by orsmga003.jf.intel.com with ESMTP; 10 Oct 2017 00:51:23 -0700
Received: from fmsmsx153.amr.corp.intel.com (10.18.125.6) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.319.2; Tue, 10 Oct 2017 00:51:23 -0700
Received: from FMSMSX109.amr.corp.intel.com ([169.254.15.12]) by
 FMSMSX153.amr.corp.intel.com ([169.254.9.146]) with mapi id 14.03.0319.002;
 Tue, 10 Oct 2017 00:51:23 -0700
From: "Dilger, Andreas" <andreas.dilger@intel.com>
To: Aastha Gupta <aastha.gupta4104@gmail.com>
CC: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
	"Drokin, Oleg" <oleg.drokin@intel.com>, James Simmons
	<jsimmons@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 01/11] staging: lustre: fix incorrect multi-line comment
 style
Thread-Topic: [PATCH 01/11] staging: lustre: fix incorrect multi-line
 comment style
Thread-Index: AQHTPdmq+xnmf5RBS0OajPFk9ySxl6LdMsWA
Date: Tue, 10 Oct 2017 07:51:22 +0000
Message-ID: <0A5F2D63-41B2-4345-9F46-D53738ACF370@intel.com>
References: <1507208303-17615-1-git-send-email-aastha.gupta4104@gmail.com>
 <1507208303-17615-2-git-send-email-aastha.gupta4104@gmail.com>
In-Reply-To: <1507208303-17615-2-git-send-email-aastha.gupta4104@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.255.230.93]
Content-Type: text/plain; charset="us-ascii"
Content-ID: <C656549C28F9FF4BA4D6D0BEAD8BFDE4@intel.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Return-Path: andreas.dilger@intel.com

On Oct 5, 2017, at 06:58, Aastha Gupta <aastha.gupta4104@gmail.com> wrote:
>=20
> This patch fixes the checkpatch.pl warning:
>=20
> WARNING: block comments use a trailing */ on a separate line
>=20
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
> .../staging/lustre/lustre/include/lustre_errno.h   | 51 ++++++++++++++---=
-----
> 1 file changed, 34 insertions(+), 17 deletions(-)
>=20
> diff --git a/drivers/staging/lustre/lustre/include/lustre_errno.h b/drive=
rs/staging/lustre/lustre/include/lustre_errno.h
> index 35aefa2..02642be 100644
> --- a/drivers/staging/lustre/lustre/include/lustre_errno.h
> +++ b/drivers/staging/lustre/lustre/include/lustre_errno.h
> @@ -71,7 +71,8 @@
> #define LUSTRE_EMLINK		31	/* Too many links */
> #define LUSTRE_EPIPE		32	/* Broken pipe */
> #define LUSTRE_EDOM		33	/* Math argument out of domain of
> -					   func */
> +					 * func
> +					 */

In cases like this, I'd rather just shorten the comment to fit onto a
single line so that it is easier to read, something like:

#define LUSTRE_EDOM		33	/* Math argument out of func domain */

> #define LUSTRE_ERANGE		34	/* Math result not representable */
> #define LUSTRE_EDEADLK		35	/* Resource deadlock would occur */
> #define LUSTRE_ENAMETOOLONG	36	/* File name too long */
> @@ -79,7 +80,8 @@
> #define LUSTRE_ENOSYS		38	/* Function not implemented */
> #define LUSTRE_ENOTEMPTY	39	/* Directory not empty */
> #define LUSTRE_ELOOP		40	/* Too many symbolic links
> -					   encountered */
> +					 * encountered
> +					 */

Similarly,

#define LUSTRE_ELOOP		40	/* Too many symbolic links found */


> #define LUSTRE_ENOMSG		42	/* No message of desired type */
> #define LUSTRE_EIDRM		43	/* Identifier removed */
> #define LUSTRE_ECHRNG		44	/* Channel number out of range */
> @@ -113,22 +115,28 @@
> #define LUSTRE_EDOTDOT		73	/* RFS specific error */
> #define LUSTRE_EBADMSG		74	/* Not a data message */
> #define LUSTRE_EOVERFLOW	75	/* Value too large for defined data
> -					   type */
> +					 * type
> +					 */

#define LUSTRE_EOVERFLOW	75	/* Value too large for data type */

> #define LUSTRE_ENOTUNIQ		76	/* Name not unique on network */
> #define LUSTRE_EBADFD		77	/* File descriptor in bad state */
> #define LUSTRE_EREMCHG		78	/* Remote address changed */
> #define LUSTRE_ELIBACC		79	/* Can not access a needed shared
> -					   library */
> +					 * library
> +					 */

#define LUSTRE_ELIBACC		79	/* Can't access needed shared library */

> #define LUSTRE_ELIBBAD		80	/* Accessing a corrupted shared
> -					   library */
> +					 * ibrary
> +					 */

Typo here, "ibrary", and this could be shortened to fit on one line:

#define LUSTRE_ELIBBAD		80	/* Accessing corrupted shared library */

> #define LUSTRE_ELIBSCN		81	/* .lib section in a.out corrupted */
> #define LUSTRE_ELIBMAX		82	/* Attempting to link in too many shared
> -					   libraries */
> +					 * libraries
> +					 */

#define LUSTRE_ELIBMAX		82	/* Trying to link too many libraries */

> #define LUSTRE_ELIBEXEC		83	/* Cannot exec a shared library
> -					   directly */
> +					 * directly
> +					 */

#define LUSTRE_ELIBEXEC		83	/* Cannot exec shared lib directly */

> #define LUSTRE_EILSEQ		84	/* Illegal byte sequence */
> #define LUSTRE_ERESTART		85	/* Interrupted system call should be
> -					   restarted */
> +					 * restarted
> +					 */

#define LUSTRE_ERESTART		85	/* Restart interrupted system call */

> #define LUSTRE_ESTRPIPE		86	/* Streams pipe error */
> #define LUSTRE_EUSERS		87	/* Too many users */
> #define LUSTRE_ENOTSOCK		88	/* Socket operation on non-socket */
> @@ -139,25 +147,31 @@
> #define LUSTRE_EPROTONOSUPPORT	93	/* Protocol not supported */
> #define LUSTRE_ESOCKTNOSUPPORT	94	/* Socket type not supported */
> #define LUSTRE_EOPNOTSUPP	95	/* Operation not supported on transport
> -					   endpoint */
> +					 * endpoint
> +					 */

#define LUSTRE_EOPNOTSUPP	95	/* Operation not supported */

> #define LUSTRE_EPFNOSUPPORT	96	/* Protocol family not supported */
> #define LUSTRE_EAFNOSUPPORT	97	/* Address family not supported by
> -					   protocol */
> +					 * protocol
> +					 */

#define LUSTRE_EAFNOSUPPORT	97	/* Address family not supported */

> #define LUSTRE_EADDRINUSE	98	/* Address already in use */
> #define LUSTRE_EADDRNOTAVAIL	99	/* Cannot assign requested address */
> #define LUSTRE_ENETDOWN		100	/* Network is down */
> #define LUSTRE_ENETUNREACH	101	/* Network is unreachable */
> #define LUSTRE_ENETRESET	102	/* Network dropped connection because of
> -					   reset */
> +					 * reset
> +					 */

#define LUSTRE_ENETRESET	102	/* Network connection drop for reset */

> #define LUSTRE_ECONNABORTED	103	/* Software caused connection abort */
> #define LUSTRE_ECONNRESET	104	/* Connection reset by peer */
> #define LUSTRE_ENOBUFS		105	/* No buffer space available */
> #define LUSTRE_EISCONN		106	/* Transport endpoint is already
> -					   connected */
> +					 * connected
> +					 */

#define LUSTRE_EISCONN		106	/* Transport endpoint is connected */

> #define LUSTRE_ENOTCONN		107	/* Transport endpoint is not
> -					   connected */
> +					 * connected
> +					 */

#define LUSTRE_ENOTCONN		107	/* Transport endpoint not connected */

> #define LUSTRE_ESHUTDOWN	108	/* Cannot send after transport endpoint
> -					   shutdown */
> +					 * shutdown
> +					 */

#define LUSTRE_ESHUTDOWN	108	/* Cannot send after shutdown */=20

> #define LUSTRE_ETOOMANYREFS	109	/* Too many references: cannot splice */
> #define LUSTRE_ETIMEDOUT	110	/* Connection timed out */
> #define LUSTRE_ECONNREFUSED	111	/* Connection refused */
> @@ -186,7 +200,8 @@
> #define LUSTRE_ERESTARTNOHAND	514	/* restart if no handler.. */
> #define LUSTRE_ENOIOCTLCMD	515	/* No ioctl command */
> #define LUSTRE_ERESTART_RESTARTBLOCK 516 /* restart by calling
> -					    sys_restart_syscall */
> +					  * sys_restart_syscall
> +					  */

#define LUSTRE_ERESTART_RESTARTBLOCK 516 /* restart via sys_restart_syscall=
() */

> #define LUSTRE_EBADHANDLE	521	/* Illegal NFS file handle */
> #define LUSTRE_ENOTSYNC		522	/* Update synchronization mismatch */
> #define LUSTRE_EBADCOOKIE	523	/* Cookie is stale */
> @@ -195,9 +210,11 @@
> #define LUSTRE_ESERVERFAULT	526	/* An untranslatable error occurred */
> #define LUSTRE_EBADTYPE		527	/* Type not supported by server */
> #define LUSTRE_EJUKEBOX		528	/* Request initiated, but will not
> -					   complete before timeout */
> +					 * complete before timeout
> +					 */

#define LUSTRE_EJUKEBOX		528	/* Request won't finish before timeout */

> #define LUSTRE_EIOCBQUEUED	529	/* iocb queued, will get completion
> -					   event */
> +					 * event
> +					 */

#define LUSTRE_EIOCBQUEUED	529	/* iocb queued await completion event */

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








