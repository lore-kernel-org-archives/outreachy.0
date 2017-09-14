X-GM-THRID: 6465584009265020928
X-Received: by 10.25.38.140 with SMTP id m134mr1770327lfm.2.1505389942463;
        Thu, 14 Sep 2017 04:52:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.150.151 with SMTP id y145ls1458372wmd.4.gmail; Thu, 14 Sep
 2017 04:52:21 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDi5R3inN1vr/93XdmijTtSRLv9HKXfyHjJ3X/r8JEV/jnNbv0jw5v93Gv9J2nomWb09mz5
X-Received: by 10.28.55.209 with SMTP id e200mr181008wma.0.1505389941601;
        Thu, 14 Sep 2017 04:52:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505389941; cv=none;
        d=google.com; s=arc-20160816;
        b=KteSqDCWQhs3+/ozesFfmHShCKM2WHLnMMSw60sHL4mKoQUN1/H3YQNriTP2QONszM
         YtZtBunYT1UYb8X26Rk3ihqtuD78N6UtKt/wtpdG3He++dy1pcI+zF8Qgj72jhOfv+a5
         QUCWkQ5TXCb5y8r9l2PLwTeQtfm5Hhg9X1pjiNgj+epNlgNGXnSKl+9KbmCOmm05mugj
         MQ51hDPbfByVaxwBJJkYMJqaOfhjyv0ZyW05b/rWmOFWRuGFDYPIgvb1go0APjZe5Bg0
         pZ++jTCw3YEUTMrjIXCY9Rli0A7yXXoBiZolx4m46YJkzog7j7Nu0RSZ219FD1SMBs86
         1qUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=h73vRDImk9Kdb2jOnCAl2Jk+kgtmSZVmZLZj9Pr1Awg=;
        b=MgGKRTA5O0sApZ4vHKOjyd9Zn/fktKAHT0dY0ktogKd00vhVoMMW9Wv1IUZDWUKZJa
         U8kRPCWhUPqq9Hl1afOL7yCVmg9YBeychnYgU7/LD52jF0noRM57r5Y5PvIm3hwFI4Ck
         tQB77Ph4ZudFknSTTMMY2bNyqkfBWL1zF+qV7pPVO8RZVyTZBwmUVJu4ceXNA1/m9e/b
         8xwsmigoG/yVYsYHv33I3FqZwZEt+UCpkzEtQTQSS3kuwShzE0YT0yKwOig7Kc0pNztG
         DpSKJOZlDJgliiTw+yvmzU4c04R0WaeBWRo92XYZDCBth3M1dDEu2iNEpk8spKFKoqvl
         ialQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e84si86574wmi.7.2017.09.14.04.52.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 04:52:21 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,392,1500933600"; 
   d="scan'208";a="291062466"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Sep 2017 13:52:20 +0200
Date: Thu, 14 Sep 2017 13:51:49 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: aastha.gupta4104@gmail.com
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [RESEND PATCH] staging: lustre: fix incorrect
 multi-line comment style
In-Reply-To: <16e36ffe-2edb-44a5-bf93-6e6d7c0a0ef1@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1709141351190.3185@hadrien>
References: <1505387998-6071-1-git-send-email-aastha.gupta4104@gmail.com> <alpine.DEB.2.20.1709141327470.3185@hadrien> <16e36ffe-2edb-44a5-bf93-6e6d7c0a0ef1@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="----=_Part_24984_1236424391.1505389748949"

------=_Part_24984_1236424391.1505389748949
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT



On Thu, 14 Sep 2017, aastha.gupta4104@gmail.com wrote:

> Please ignore this patch.This was a huge mistake on my part. I have sent a
> correct "resend patch".

If you made a correction, then put [PATCH v2] in the subject line and
explain what you changed.

julia

>
> On Thursday, September 14, 2017 at 5:00:26 PM UTC+5:30, Julia Lawall wrote:
>       Why did you resend it? �If you changed something, then it should
>       be a v2
>       and there should be a comment about what changed under the ---.
>       Otherwise, you should normally only resend something if someone
>       asks you
>       to. �For example, Greg will let us know when he has applied all
>       the
>       patches, and will ask that anything he missed be resent. �But in
>       that case
>       it may need to be rebased against the latest version.
>
>       julia
>
>       On Thu, 14 Sep 2017, Aastha Gupta wrote:
>
>       > This patch fixes the checkpatch.pl warning:
>       >
>       > WARNING: block comments use a trailing */ on a separate line
>       >
>       > Signed-off-by: Aastha Gupta <aastha.g...@gmail.com>
>       > ---
>       > �drivers/staging/lustre/lustre/include/lu_object.h �| �2 +-
>       > �.../staging/lustre/lustre/include/lustre_errno.h � | 51
>       ++++++++++++++--------
>       > �2 files changed, 35 insertions(+), 18 deletions(-)
>       >
>       > diff --git a/drivers/staging/lustre/lustre/include/lu_object.h
>       b/drivers/staging/lustre/lustre/include/lu_object.h
>       > index 4f213c4..a3c0481 100644
>       > --- a/drivers/staging/lustre/lustre/include/lu_object.h
>       > +++ b/drivers/staging/lustre/lustre/include/lu_object.h
>       > @@ -1130,7 +1130,7 @@ struct lu_context_key {
>       >
>       ���������{��������������������������������������������������������
>       \
>       > �����������������type *value;��������������������������������
>       � � �\
>       >
>       �����������������������������������������������������������������
>       �\
>       > -����������������BUILD_BUG_ON(PAGE_SIZE < sizeof(*value)); � �
>       � �\
>       > +����������������BUILD_BUG_ON(sizeof(*value) > PAGE_SIZE); � �
>       � �\
>       >
>       �����������������������������������������������������������������
>       �\
>       > �����������������value = kzalloc(sizeof(*value),
>       GFP_NOFS);��������\
>       > �����������������if (!value)��������������������������������\
>       > diff --git
>       a/drivers/staging/lustre/lustre/include/lustre_errno.h
>       b/drivers/staging/lustre/lustre/include/lustre_errno.h
>       > index 35aefa2..02642be 100644
>       > --- a/drivers/staging/lustre/lustre/include/lustre_errno.h
>       > +++ b/drivers/staging/lustre/lustre/include/lustre_errno.h
>       > @@ -71,7 +71,8 @@
>       > �#define LUSTRE_EMLINK����������������31��������/* Too many
>       links */
>       > �#define LUSTRE_EPIPE����������������32��������/* Broken pipe
>       */
>       > �#define LUSTRE_EDOM����������������33��������/* Math argument
>       out of domain of
>       > -���������������������������������������� � func */
>       > +���������������������������������������� * func
>       > +���������������������������������������� */
>       > �#define LUSTRE_ERANGE����������������34��������/* Math result
>       not representable */
>       > �#define LUSTRE_EDEADLK����������������35��������/* Resource
>       deadlock would occur */
>       > �#define LUSTRE_ENAMETOOLONG��������36��������/* File name too
>       long */
>       > @@ -79,7 +80,8 @@
>       > �#define LUSTRE_ENOSYS����������������38��������/* Function
>       not implemented */
>       > �#define LUSTRE_ENOTEMPTY��������39��������/* Directory not
>       empty */
>       > �#define LUSTRE_ELOOP����������������40��������/* Too many
>       symbolic links
>       > -���������������������������������������� � encountered */
>       > +���������������������������������������� * encountered
>       > +���������������������������������������� */
>       > �#define LUSTRE_ENOMSG����������������42��������/* No message
>       of desired type */
>       > �#define LUSTRE_EIDRM����������������43��������/* Identifier
>       removed */
>       > �#define LUSTRE_ECHRNG����������������44��������/* Channel
>       number out of range */
>       > @@ -113,22 +115,28 @@
>       > �#define LUSTRE_EDOTDOT����������������73��������/* RFS
>       specific error */
>       > �#define LUSTRE_EBADMSG����������������74��������/* Not a data
>       message */
>       > �#define LUSTRE_EOVERFLOW��������75��������/* Value too large
>       for defined data
>       > -���������������������������������������� � type */
>       > +���������������������������������������� * type
>       > +���������������������������������������� */
>       > �#define LUSTRE_ENOTUNIQ����������������76��������/* Name not
>       unique on network */
>       > �#define LUSTRE_EBADFD����������������77��������/* File
>       descriptor in bad state */
>       > �#define LUSTRE_EREMCHG����������������78��������/* Remote
>       address changed */
>       > �#define LUSTRE_ELIBACC����������������79��������/* Can not
>       access a needed shared
>       > -���������������������������������������� � library */
>       > +���������������������������������������� * library
>       > +���������������������������������������� */
>       > �#define LUSTRE_ELIBBAD����������������80��������/* Accessing
>       a corrupted shared
>       > -���������������������������������������� � library */
>       > +���������������������������������������� * ibrary
>       > +���������������������������������������� */
>       > �#define LUSTRE_ELIBSCN����������������81��������/* .lib
>       section in a.out corrupted */
>       > �#define LUSTRE_ELIBMAX����������������82��������/* Attempting
>       to link in too many shared
>       > -���������������������������������������� � libraries */
>       > +���������������������������������������� * libraries
>       > +���������������������������������������� */
>       > �#define LUSTRE_ELIBEXEC����������������83��������/* Cannot
>       exec a shared library
>       > -���������������������������������������� � directly */
>       > +���������������������������������������� * directly
>       > +���������������������������������������� */
>       > �#define LUSTRE_EILSEQ����������������84��������/* Illegal
>       byte sequence */
>       > �#define LUSTRE_ERESTART����������������85��������/*
>       Interrupted system call should be
>       > -���������������������������������������� � restarted */
>       > +���������������������������������������� * restarted
>       > +���������������������������������������� */
>       > �#define LUSTRE_ESTRPIPE����������������86��������/* Streams
>       pipe error */
>       > �#define LUSTRE_EUSERS����������������87��������/* Too many
>       users */
>       > �#define LUSTRE_ENOTSOCK����������������88��������/* Socket
>       operation on non-socket */
>       > @@ -139,25 +147,31 @@
>       > �#define LUSTRE_EPROTONOSUPPORT��������93��������/* Protocol
>       not supported */
>       > �#define LUSTRE_ESOCKTNOSUPPORT��������94��������/* Socket
>       type not supported */
>       > �#define LUSTRE_EOPNOTSUPP��������95��������/* Operation not
>       supported on transport
>       > -���������������������������������������� � endpoint */
>       > +���������������������������������������� * endpoint
>       > +���������������������������������������� */
>       > �#define LUSTRE_EPFNOSUPPORT��������96��������/* Protocol
>       family not supported */
>       > �#define LUSTRE_EAFNOSUPPORT��������97��������/* Address
>       family not supported by
>       > -���������������������������������������� � protocol */
>       > +���������������������������������������� * protocol
>       > +���������������������������������������� */
>       > �#define LUSTRE_EADDRINUSE��������98��������/* Address already
>       in use */
>       > �#define LUSTRE_EADDRNOTAVAIL��������99��������/* Cannot
>       assign requested address */
>       > �#define LUSTRE_ENETDOWN����������������100��������/* Network
>       is down */
>       > �#define LUSTRE_ENETUNREACH��������101��������/* Network is
>       unreachable */
>       > �#define LUSTRE_ENETRESET��������102��������/* Network dropped
>       connection because of
>       > -���������������������������������������� � reset */
>       > +���������������������������������������� * reset
>       > +���������������������������������������� */
>       > �#define LUSTRE_ECONNABORTED��������103��������/* Software
>       caused connection abort */
>       > �#define LUSTRE_ECONNRESET��������104��������/* Connection
>       reset by peer */
>       > �#define LUSTRE_ENOBUFS����������������105��������/* No buffer
>       space available */
>       > �#define LUSTRE_EISCONN����������������106��������/* Transport
>       endpoint is already
>       > -���������������������������������������� � connected */
>       > +���������������������������������������� * connected
>       > +���������������������������������������� */
>       > �#define LUSTRE_ENOTCONN����������������107��������/*
>       Transport endpoint is not
>       > -���������������������������������������� � connected */
>       > +���������������������������������������� * connected
>       > +���������������������������������������� */
>       > �#define LUSTRE_ESHUTDOWN��������108��������/* Cannot send
>       after transport endpoint
>       > -���������������������������������������� � shutdown */
>       > +���������������������������������������� * shutdown
>       > +���������������������������������������� */
>       > �#define LUSTRE_ETOOMANYREFS��������109��������/* Too many
>       references: cannot splice */
>       > �#define LUSTRE_ETIMEDOUT��������110��������/* Connection
>       timed out */
>       > �#define LUSTRE_ECONNREFUSED��������111��������/* Connection
>       refused */
>       > @@ -186,7 +200,8 @@
>       > �#define LUSTRE_ERESTARTNOHAND��������514��������/* restart if
>       no handler.. */
>       > �#define LUSTRE_ENOIOCTLCMD��������515��������/* No ioctl
>       command */
>       > �#define LUSTRE_ERESTART_RESTARTBLOCK 516 /* restart by
>       calling
>       > -���������������������������������������� �
>       �sys_restart_syscall */
>       > +���������������������������������������� �*
>       sys_restart_syscall
>       > +���������������������������������������� �*/
>       > �#define LUSTRE_EBADHANDLE��������521��������/* Illegal NFS
>       file handle */
>       > �#define LUSTRE_ENOTSYNC����������������522��������/* Update
>       synchronization mismatch */
>       > �#define LUSTRE_EBADCOOKIE��������523��������/* Cookie is
>       stale */
>       > @@ -195,9 +210,11 @@
>       > �#define LUSTRE_ESERVERFAULT��������526��������/* An
>       untranslatable error occurred */
>       > �#define LUSTRE_EBADTYPE����������������527��������/* Type not
>       supported by server */
>       > �#define LUSTRE_EJUKEBOX����������������528��������/* Request
>       initiated, but will not
>       > -���������������������������������������� � complete before
>       timeout */
>       > +���������������������������������������� * complete before
>       timeout
>       > +���������������������������������������� */
>       > �#define LUSTRE_EIOCBQUEUED��������529��������/* iocb queued,
>       will get completion
>       > -���������������������������������������� � event */
>       > +���������������������������������������� * event
>       > +���������������������������������������� */
>       > �#define LUSTRE_EIOCBRETRY��������530��������/* iocb queued,
>       will trigger a retry */
>       >
>       > �/*
>       > --
>       > 2.7.4
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/1505387998-6071-1-git-se
>       nd-email-aastha.gupta4104%40gmail.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/16e36ffe-2edb-44a5-bf93-
> 6e6d7c0a0ef1%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
------=_Part_24984_1236424391.1505389748949--

