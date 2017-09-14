X-GM-THRID: 6465584009265020928
X-Received: by 10.46.29.11 with SMTP id d11mr1588660ljd.8.1505392444850;
        Thu, 14 Sep 2017 05:34:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.5.73 with SMTP id 70ls1019175wmf.22.gmail; Thu, 14 Sep 2017
 05:34:03 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDO2twhkwIxdfiG89yKoEWFTtyfAFMGudqWLy4V3b1N8MUfAx7I45mb9rqoX/UfFcp5U7ZH
X-Received: by 10.28.207.5 with SMTP id f5mr199949wmg.32.1505392443568;
        Thu, 14 Sep 2017 05:34:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505392443; cv=none;
        d=google.com; s=arc-20160816;
        b=oFXBngAKKHbB1BdbYLVefVthyJrkOVQqIQ40ctBGcwYmTJNjsP3uMVPV96qEqE6u7e
         UxLgaIzhPJ6PvzB5Hr6wpqZlGoX9QN2dWlXay8b8ugYcezG1nCbnh20xHcPMx8QGvQ4g
         3jBxRRoyt0wRtoL9ktgyBGRhTjp+seJwn3hdtlcXTrdpIZMRqrEwvVGfWxfFXjtfCY4H
         woVspBlw4xH7Yfu2UF/MdHrU+q42rf2w4IcW03s83vabT0MYd/KfNKRJ3F5A/x8jSp3K
         c8j/JLBKwSKbd3ZXXM16pJtdL9e2ozzjbBsq7xkxnfyD9N0cEU1JRdod/EumFCctQKgH
         SMcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=cY0eu/abbiX6C6fUCKyshROoqbeva+xOcDG0g+GYpA8=;
        b=exufKPUzMSE76pIMPDlDruq+i9u/wxQ4DT4XLmChA60QxuL9HvWmm+vVnXBug/XyWs
         Q6/ZnoVZ2XXXGDK87Sn96lNJCKyzzvMAgcellgNkEVDPvOcRcdIBzp2AJwPpUI0wyMjh
         a5g0MrIMeMREXlCieR0/mDtA+qIIGilx6uFW57tC+TpMGFH7P5aklqyxR5Dw/blk5Ujl
         tjaUUEg/YRYPf7SH6nqg0Hk1TVJdobSY/Mx2F/dDHbYxHnwb5Bq438EGwG1XyhT1sZqO
         T1BmoSmVJG8khlXtKCld9aTkxfhMqDlLwJxTlXxt7o39SdRasCiMkFdrtRjMawU1+Dky
         D7Rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b62si85360wmd.3.2017.09.14.05.34.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 05:34:03 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,392,1500933600"; 
   d="scan'208";a="237487508"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Sep 2017 14:33:57 +0200
Date: Thu, 14 Sep 2017 14:33:25 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: aastha.gupta4104@gmail.com
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [RESEND PATCH] staging: lustre: fix
 incorrect multi-line comment style
In-Reply-To: <3b0e565d-d94c-40df-bda7-111dc687d5c6@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1709141432340.3185@hadrien>
References: <1505389062-8222-1-git-send-email-aastha.gupta4104@gmail.com> <3b0e565d-d94c-40df-bda7-111dc687d5c6@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="----=_Part_25267_1444679007.1505391250034"

------=_Part_25267_1444679007.1505391250034
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT



On Thu, 14 Sep 2017, aastha.gupta4104@gmail.com wrote:

> Please review this patch.

You should be a little more patient :)  Everything sent to the mailing
list should be reviewed eventually.  You can send other patches in the
meantime.

julia

>
> On Thursday, September 14, 2017 at 5:08:05 PM UTC+5:30, Aastha Gupta wrote:
>       This patch fixes the checkpatch.pl warning:
>
>       WARNING: block comments use a trailing */ on a separate line
>
>       Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
>       ---
>       �.../staging/lustre/lustre/include/lustre_errno.h � | 51
>       ++++++++++++++--------
>       �1 file changed, 34 insertions(+), 17 deletions(-)
>
>       diff --git
>       a/drivers/staging/lustre/lustre/include/lustre_errno.h
>       b/drivers/staging/lustre/lustre/include/lustre_errno.h
>       index 35aefa2..02642be 100644
>       --- a/drivers/staging/lustre/lustre/include/lustre_errno.h
>       +++ b/drivers/staging/lustre/lustre/include/lustre_errno.h
>       @@ -71,7 +71,8 @@
>       �#define LUSTRE_EMLINK����������������31��������/* Too many
>       links */
>       �#define LUSTRE_EPIPE����������������32��������/* Broken pipe */
>       �#define LUSTRE_EDOM����������������33��������/* Math argument
>       out of domain of
>       -���������������������������������������� � func */
>       +���������������������������������������� * func
>       +���������������������������������������� */
>       �#define LUSTRE_ERANGE����������������34��������/* Math result
>       not representable */
>       �#define LUSTRE_EDEADLK����������������35��������/* Resource
>       deadlock would occur */
>       �#define LUSTRE_ENAMETOOLONG��������36��������/* File name too
>       long */
>       @@ -79,7 +80,8 @@
>       �#define LUSTRE_ENOSYS����������������38��������/* Function not
>       implemented */
>       �#define LUSTRE_ENOTEMPTY��������39��������/* Directory not
>       empty */
>       �#define LUSTRE_ELOOP����������������40��������/* Too many
>       symbolic links
>       -���������������������������������������� � encountered */
>       +���������������������������������������� * encountered
>       +���������������������������������������� */
>       �#define LUSTRE_ENOMSG����������������42��������/* No message of
>       desired type */
>       �#define LUSTRE_EIDRM����������������43��������/* Identifier
>       removed */
>       �#define LUSTRE_ECHRNG����������������44��������/* Channel
>       number out of range */
>       @@ -113,22 +115,28 @@
>       �#define LUSTRE_EDOTDOT����������������73��������/* RFS specific
>       error */
>       �#define LUSTRE_EBADMSG����������������74��������/* Not a data
>       message */
>       �#define LUSTRE_EOVERFLOW��������75��������/* Value too large
>       for defined data
>       -���������������������������������������� � type */
>       +���������������������������������������� * type
>       +���������������������������������������� */
>       �#define LUSTRE_ENOTUNIQ����������������76��������/* Name not
>       unique on network */
>       �#define LUSTRE_EBADFD����������������77��������/* File
>       descriptor in bad state */
>       �#define LUSTRE_EREMCHG����������������78��������/* Remote
>       address changed */
>       �#define LUSTRE_ELIBACC����������������79��������/* Can not
>       access a needed shared
>       -���������������������������������������� � library */
>       +���������������������������������������� * library
>       +���������������������������������������� */
>       �#define LUSTRE_ELIBBAD����������������80��������/* Accessing a
>       corrupted shared
>       -���������������������������������������� � library */
>       +���������������������������������������� * ibrary
>       +���������������������������������������� */
>       �#define LUSTRE_ELIBSCN����������������81��������/* .lib section
>       in a.out corrupted */
>       �#define LUSTRE_ELIBMAX����������������82��������/* Attempting
>       to link in too many shared
>       -���������������������������������������� � libraries */
>       +���������������������������������������� * libraries
>       +���������������������������������������� */
>       �#define LUSTRE_ELIBEXEC����������������83��������/* Cannot exec
>       a shared library
>       -���������������������������������������� � directly */
>       +���������������������������������������� * directly
>       +���������������������������������������� */
>       �#define LUSTRE_EILSEQ����������������84��������/* Illegal byte
>       sequence */
>       �#define LUSTRE_ERESTART����������������85��������/* Interrupted
>       system call should be
>       -���������������������������������������� � restarted */
>       +���������������������������������������� * restarted
>       +���������������������������������������� */
>       �#define LUSTRE_ESTRPIPE����������������86��������/* Streams
>       pipe error */
>       �#define LUSTRE_EUSERS����������������87��������/* Too many
>       users */
>       �#define LUSTRE_ENOTSOCK����������������88��������/* Socket
>       operation on non-socket */
>       @@ -139,25 +147,31 @@
>       �#define LUSTRE_EPROTONOSUPPORT��������93��������/* Protocol not
>       supported */
>       �#define LUSTRE_ESOCKTNOSUPPORT��������94��������/* Socket type
>       not supported */
>       �#define LUSTRE_EOPNOTSUPP��������95��������/* Operation not
>       supported on transport
>       -���������������������������������������� � endpoint */
>       +���������������������������������������� * endpoint
>       +���������������������������������������� */
>       �#define LUSTRE_EPFNOSUPPORT��������96��������/* Protocol family
>       not supported */
>       �#define LUSTRE_EAFNOSUPPORT��������97��������/* Address family
>       not supported by
>       -���������������������������������������� � protocol */
>       +���������������������������������������� * protocol
>       +���������������������������������������� */
>       �#define LUSTRE_EADDRINUSE��������98��������/* Address already
>       in use */
>       �#define LUSTRE_EADDRNOTAVAIL��������99��������/* Cannot assign
>       requested address */
>       �#define LUSTRE_ENETDOWN����������������100��������/* Network is
>       down */
>       �#define LUSTRE_ENETUNREACH��������101��������/* Network is
>       unreachable */
>       �#define LUSTRE_ENETRESET��������102��������/* Network dropped
>       connection because of
>       -���������������������������������������� � reset */
>       +���������������������������������������� * reset
>       +���������������������������������������� */
>       �#define LUSTRE_ECONNABORTED��������103��������/* Software
>       caused connection abort */
>       �#define LUSTRE_ECONNRESET��������104��������/* Connection reset
>       by peer */
>       �#define LUSTRE_ENOBUFS����������������105��������/* No buffer
>       space available */
>       �#define LUSTRE_EISCONN����������������106��������/* Transport
>       endpoint is already
>       -���������������������������������������� � connected */
>       +���������������������������������������� * connected
>       +���������������������������������������� */
>       �#define LUSTRE_ENOTCONN����������������107��������/* Transport
>       endpoint is not
>       -���������������������������������������� � connected */
>       +���������������������������������������� * connected
>       +���������������������������������������� */
>       �#define LUSTRE_ESHUTDOWN��������108��������/* Cannot send after
>       transport endpoint
>       -���������������������������������������� � shutdown */
>       +���������������������������������������� * shutdown
>       +���������������������������������������� */
>       �#define LUSTRE_ETOOMANYREFS��������109��������/* Too many
>       references: cannot splice */
>       �#define LUSTRE_ETIMEDOUT��������110��������/* Connection timed
>       out */
>       �#define LUSTRE_ECONNREFUSED��������111��������/* Connection
>       refused */
>       @@ -186,7 +200,8 @@
>       �#define LUSTRE_ERESTARTNOHAND��������514��������/* restart if
>       no handler.. */
>       �#define LUSTRE_ENOIOCTLCMD��������515��������/* No ioctl
>       command */
>       �#define LUSTRE_ERESTART_RESTARTBLOCK 516 /* restart by calling
>       -���������������������������������������� � �sys_restart_syscall
>       */
>       +���������������������������������������� �* sys_restart_syscall
>       +���������������������������������������� �*/
>       �#define LUSTRE_EBADHANDLE��������521��������/* Illegal NFS file
>       handle */
>       �#define LUSTRE_ENOTSYNC����������������522��������/* Update
>       synchronization mismatch */
>       �#define LUSTRE_EBADCOOKIE��������523��������/* Cookie is stale
>       */
>       @@ -195,9 +210,11 @@
>       �#define LUSTRE_ESERVERFAULT��������526��������/* An
>       untranslatable error occurred */
>       �#define LUSTRE_EBADTYPE����������������527��������/* Type not
>       supported by server */
>       �#define LUSTRE_EJUKEBOX����������������528��������/* Request
>       initiated, but will not
>       -���������������������������������������� � complete before
>       timeout */
>       +���������������������������������������� * complete before
>       timeout
>       +���������������������������������������� */
>       �#define LUSTRE_EIOCBQUEUED��������529��������/* iocb queued,
>       will get completion
>       -���������������������������������������� � event */
>       +���������������������������������������� * event
>       +���������������������������������������� */
>       �#define LUSTRE_EIOCBRETRY��������530��������/* iocb queued,
>       will trigger a retry */
>       �
>       �/*
>       --
>       2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/3b0e565d-d94c-40df-bda7-
> 111dc687d5c6%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
------=_Part_25267_1444679007.1505391250034--

