X-GM-THRID: 6473410411176656896
X-Received: by 10.31.210.66 with SMTP id j63mr5793136vkg.100.1507776922558;
        Wed, 11 Oct 2017 19:55:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.4.76 with SMTP id 70ls1720uav.12.gmail; Wed, 11 Oct 2017
 19:55:21 -0700 (PDT)
X-Received: by 10.31.88.194 with SMTP id m185mr5727207vkb.83.1507776921596;
        Wed, 11 Oct 2017 19:55:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507776921; cv=none;
        d=google.com; s=arc-20160816;
        b=RvE6SxyUTZFQSs42dGXQ+eL+ofOeb8BYRTBXlffgqB5ZUvuWUc0PDRZ5lyYaLyINVd
         MLiMoL1xcRzFxb55ebaH31OmuRhyw6soe9fOxlY80u/vOd8JUv3+Xv5CcK0gxIIRylmr
         cauqfzUWm6ZTDDRb5qY1P9q3y4UPAG7RCbEHFKSin/c12e1b5DZwv+UeTWgpieCTdLP2
         pKDgHlWHhsHd0ihgLZ4mskOP2yhS0Iwmnc8xvYHj3QZn6iTsOlme0Y50K+LKOwOn5ksi
         mb/aPDYbSXhCHJoe3+c55rc0QGNVYZzBh90G/adI+toVA3XaT/DgdoRusjAo10ACotPE
         hPlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=lgvgF4SDFqIqoveU5+iysTcPtkv2XfAUiS40ZOIMqpE=;
        b=L2HARuExifyYDJrbSVYgWNLRzs5GmKDMqaYbyfsXIMGxoQT97DB6Rgw17uphzEdw6v
         4f4eZRfZvlNo/7hTfQ6PuCiaYq0bYF6VV9ECnaBqTeqg3sZhILhkukzP3pYXLspO+2rS
         tvvoBDtlHe1D8IOiTxG+uALLBwlWCGRjqnjWr7MmvPv7MXQSt6OGWtYz2boT666FA93y
         gIYFd9456ietoZTCnsCk/xPPBcPV6ufqk0wbHccMjvAeZA39zkmx7yKBtcXgYkiGm7R7
         uAXamaYFnC1+xDm9bFK3Cq2Rh9pq3g1e06N4emOt0gDZWv/Fk59E56ZsfXSW/bJYsC9c
         fd4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A2vh7a1j;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c08::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-ua0-x243.google.com (mail-ua0-x243.google.com. [2607:f8b0:400c:c08::243])
        by gmr-mx.google.com with ESMTPS id q64si846232vkg.3.2017.10.11.19.55.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 19:55:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c08::243 as permitted sender) client-ip=2607:f8b0:400c:c08::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A2vh7a1j;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c08::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x243.google.com with SMTP id 103so1184275uas.0
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Oct 2017 19:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=lgvgF4SDFqIqoveU5+iysTcPtkv2XfAUiS40ZOIMqpE=;
        b=A2vh7a1jqSQ6qXGS4j5/AuTD1bRHsMF5brVteL1UkrIjqO3T1F04zmE++OKzWs7xSK
         BmKeqxPyvp8AKO2MLBmMErsJVCzv29tQ0mpvRmMRksyitvIsXCU0TCAewVeGRiyRChjp
         SFsiQB7I9/n9PmLOOC8gKgh1NuwVcJ0uU/lQ9xIkq8p3Erl4EHLnoebKzp8iP2H6hmX8
         GOKi42AbDXOhidmV6kV9cC9AfSdxn3UEgEomQfjC6qu3AZKBMOnl60a8qmWyXXTTlvgM
         RM4ea9cDW+lSsU+p8Ya86537nIo1qlmSrt+r8xpPiw0Yr5KqQlcPLp1MQtz6hz5KFamj
         vqNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=lgvgF4SDFqIqoveU5+iysTcPtkv2XfAUiS40ZOIMqpE=;
        b=iqwKFAp4q2rCizOv1Iv8uLPnNZcL5Yj4HeW5AYTz0stPnDPUQsgBACsj1ErODT4Gmn
         E8SuPWSQ40gdmbp3Sk0I/fVLEfctf+1CS9pYFKWcINtbNgnoLHiaSpDb73LbloG0K6k7
         c1RC/bEWMfgiyBDHpHJpP2kwdr138c1DI/05q8DuN7oQ+TeHGtcjYnPrJI8FOpT1jJ6Z
         zZHifgolcEMTo8GRN3vguG4OyRozCbuyV41qM5vXdShgW8S9cMbObk4tNnNczDd5Uny4
         QIfqaH2vV4g91X+171mqJ+1RbvbeDZYU0Rp6Fk+puuqPFbcgnBPlZRNBpIRAAvrnq7o3
         a5zg==
X-Gm-Message-State: AMCzsaVzOUQ73Z9XVFLC+cK2arXjxgr5zDthcMEU26VtcI8UFrpRF0nw
	+jp6xlJMSldFFId5zNvrqc8PCZgkfL+QiBWTWk0=
X-Google-Smtp-Source: AOwi7QAbNtvAbFYOZGUNP8KhWIptYs5TsRijYeYhHDzbX6mFfyHbhrMnTU59t1HQnNYCO0Jiu3/cnu+VtFLEFDTvdks=
X-Received: by 10.159.54.107 with SMTP id s40mr850751uad.95.1507776921110;
 Wed, 11 Oct 2017 19:55:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.63.140 with HTTP; Wed, 11 Oct 2017 19:55:20 -0700 (PDT)
In-Reply-To: <0A5F2D63-41B2-4345-9F46-D53738ACF370@intel.com>
References: <1507208303-17615-1-git-send-email-aastha.gupta4104@gmail.com>
 <1507208303-17615-2-git-send-email-aastha.gupta4104@gmail.com> <0A5F2D63-41B2-4345-9F46-D53738ACF370@intel.com>
From: Aastha Gupta <aastha.gupta4104@gmail.com>
Date: Thu, 12 Oct 2017 08:25:20 +0530
Message-ID: <CAHXiS59pRwD9V52hPf9mQS+Ca_3CSCOeCTi-87musT2=XT+KYw@mail.gmail.com>
Subject: Re: [PATCH 01/11] staging: lustre: fix incorrect multi-line comment style
To: "Dilger, Andreas" <andreas.dilger@intel.com>
Cc: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>, 
	"Drokin, Oleg" <oleg.drokin@intel.com>, James Simmons <jsimmons@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

Thank you for this suggestion. I will send you the corrected patch soon.

On Tue, Oct 10, 2017 at 1:21 PM, Dilger, Andreas
<andreas.dilger@intel.com> wrote:
> On Oct 5, 2017, at 06:58, Aastha Gupta <aastha.gupta4104@gmail.com> wrote:
>>
>> This patch fixes the checkpatch.pl warning:
>>
>> WARNING: block comments use a trailing */ on a separate line
>>
>> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
>> ---
>> .../staging/lustre/lustre/include/lustre_errno.h   | 51 ++++++++++++++--------
>> 1 file changed, 34 insertions(+), 17 deletions(-)
>>
>> diff --git a/drivers/staging/lustre/lustre/include/lustre_errno.h b/drivers/staging/lustre/lustre/include/lustre_errno.h
>> index 35aefa2..02642be 100644
>> --- a/drivers/staging/lustre/lustre/include/lustre_errno.h
>> +++ b/drivers/staging/lustre/lustre/include/lustre_errno.h
>> @@ -71,7 +71,8 @@
>> #define LUSTRE_EMLINK         31      /* Too many links */
>> #define LUSTRE_EPIPE          32      /* Broken pipe */
>> #define LUSTRE_EDOM           33      /* Math argument out of domain of
>> -                                        func */
>> +                                      * func
>> +                                      */
>
> In cases like this, I'd rather just shorten the comment to fit onto a
> single line so that it is easier to read, something like:
>
> #define LUSTRE_EDOM             33      /* Math argument out of func domain */
>
>> #define LUSTRE_ERANGE         34      /* Math result not representable */
>> #define LUSTRE_EDEADLK                35      /* Resource deadlock would occur */
>> #define LUSTRE_ENAMETOOLONG   36      /* File name too long */
>> @@ -79,7 +80,8 @@
>> #define LUSTRE_ENOSYS         38      /* Function not implemented */
>> #define LUSTRE_ENOTEMPTY      39      /* Directory not empty */
>> #define LUSTRE_ELOOP          40      /* Too many symbolic links
>> -                                        encountered */
>> +                                      * encountered
>> +                                      */
>
> Similarly,
>
> #define LUSTRE_ELOOP            40      /* Too many symbolic links found */
>
>
>> #define LUSTRE_ENOMSG         42      /* No message of desired type */
>> #define LUSTRE_EIDRM          43      /* Identifier removed */
>> #define LUSTRE_ECHRNG         44      /* Channel number out of range */
>> @@ -113,22 +115,28 @@
>> #define LUSTRE_EDOTDOT                73      /* RFS specific error */
>> #define LUSTRE_EBADMSG                74      /* Not a data message */
>> #define LUSTRE_EOVERFLOW      75      /* Value too large for defined data
>> -                                        type */
>> +                                      * type
>> +                                      */
>
> #define LUSTRE_EOVERFLOW        75      /* Value too large for data type */
>
>> #define LUSTRE_ENOTUNIQ               76      /* Name not unique on network */
>> #define LUSTRE_EBADFD         77      /* File descriptor in bad state */
>> #define LUSTRE_EREMCHG                78      /* Remote address changed */
>> #define LUSTRE_ELIBACC                79      /* Can not access a needed shared
>> -                                        library */
>> +                                      * library
>> +                                      */
>
> #define LUSTRE_ELIBACC          79      /* Can't access needed shared library */
>
>> #define LUSTRE_ELIBBAD                80      /* Accessing a corrupted shared
>> -                                        library */
>> +                                      * ibrary
>> +                                      */
>
> Typo here, "ibrary", and this could be shortened to fit on one line:
>
> #define LUSTRE_ELIBBAD          80      /* Accessing corrupted shared library */
>
>> #define LUSTRE_ELIBSCN                81      /* .lib section in a.out corrupted */
>> #define LUSTRE_ELIBMAX                82      /* Attempting to link in too many shared
>> -                                        libraries */
>> +                                      * libraries
>> +                                      */
>
> #define LUSTRE_ELIBMAX          82      /* Trying to link too many libraries */
>
>> #define LUSTRE_ELIBEXEC               83      /* Cannot exec a shared library
>> -                                        directly */
>> +                                      * directly
>> +                                      */
>
> #define LUSTRE_ELIBEXEC         83      /* Cannot exec shared lib directly */
>
>> #define LUSTRE_EILSEQ         84      /* Illegal byte sequence */
>> #define LUSTRE_ERESTART               85      /* Interrupted system call should be
>> -                                        restarted */
>> +                                      * restarted
>> +                                      */
>
> #define LUSTRE_ERESTART         85      /* Restart interrupted system call */
>
>> #define LUSTRE_ESTRPIPE               86      /* Streams pipe error */
>> #define LUSTRE_EUSERS         87      /* Too many users */
>> #define LUSTRE_ENOTSOCK               88      /* Socket operation on non-socket */
>> @@ -139,25 +147,31 @@
>> #define LUSTRE_EPROTONOSUPPORT        93      /* Protocol not supported */
>> #define LUSTRE_ESOCKTNOSUPPORT        94      /* Socket type not supported */
>> #define LUSTRE_EOPNOTSUPP     95      /* Operation not supported on transport
>> -                                        endpoint */
>> +                                      * endpoint
>> +                                      */
>
> #define LUSTRE_EOPNOTSUPP       95      /* Operation not supported */
>
>> #define LUSTRE_EPFNOSUPPORT   96      /* Protocol family not supported */
>> #define LUSTRE_EAFNOSUPPORT   97      /* Address family not supported by
>> -                                        protocol */
>> +                                      * protocol
>> +                                      */
>
> #define LUSTRE_EAFNOSUPPORT     97      /* Address family not supported */
>
>> #define LUSTRE_EADDRINUSE     98      /* Address already in use */
>> #define LUSTRE_EADDRNOTAVAIL  99      /* Cannot assign requested address */
>> #define LUSTRE_ENETDOWN               100     /* Network is down */
>> #define LUSTRE_ENETUNREACH    101     /* Network is unreachable */
>> #define LUSTRE_ENETRESET      102     /* Network dropped connection because of
>> -                                        reset */
>> +                                      * reset
>> +                                      */
>
> #define LUSTRE_ENETRESET        102     /* Network connection drop for reset */
>
>> #define LUSTRE_ECONNABORTED   103     /* Software caused connection abort */
>> #define LUSTRE_ECONNRESET     104     /* Connection reset by peer */
>> #define LUSTRE_ENOBUFS                105     /* No buffer space available */
>> #define LUSTRE_EISCONN                106     /* Transport endpoint is already
>> -                                        connected */
>> +                                      * connected
>> +                                      */
>
> #define LUSTRE_EISCONN          106     /* Transport endpoint is connected */
>
>> #define LUSTRE_ENOTCONN               107     /* Transport endpoint is not
>> -                                        connected */
>> +                                      * connected
>> +                                      */
>
> #define LUSTRE_ENOTCONN         107     /* Transport endpoint not connected */
>
>> #define LUSTRE_ESHUTDOWN      108     /* Cannot send after transport endpoint
>> -                                        shutdown */
>> +                                      * shutdown
>> +                                      */
>
> #define LUSTRE_ESHUTDOWN        108     /* Cannot send after shutdown */
>
>> #define LUSTRE_ETOOMANYREFS   109     /* Too many references: cannot splice */
>> #define LUSTRE_ETIMEDOUT      110     /* Connection timed out */
>> #define LUSTRE_ECONNREFUSED   111     /* Connection refused */
>> @@ -186,7 +200,8 @@
>> #define LUSTRE_ERESTARTNOHAND 514     /* restart if no handler.. */
>> #define LUSTRE_ENOIOCTLCMD    515     /* No ioctl command */
>> #define LUSTRE_ERESTART_RESTARTBLOCK 516 /* restart by calling
>> -                                         sys_restart_syscall */
>> +                                       * sys_restart_syscall
>> +                                       */
>
> #define LUSTRE_ERESTART_RESTARTBLOCK 516 /* restart via sys_restart_syscall() */
>
>> #define LUSTRE_EBADHANDLE     521     /* Illegal NFS file handle */
>> #define LUSTRE_ENOTSYNC               522     /* Update synchronization mismatch */
>> #define LUSTRE_EBADCOOKIE     523     /* Cookie is stale */
>> @@ -195,9 +210,11 @@
>> #define LUSTRE_ESERVERFAULT   526     /* An untranslatable error occurred */
>> #define LUSTRE_EBADTYPE               527     /* Type not supported by server */
>> #define LUSTRE_EJUKEBOX               528     /* Request initiated, but will not
>> -                                        complete before timeout */
>> +                                      * complete before timeout
>> +                                      */
>
> #define LUSTRE_EJUKEBOX         528     /* Request won't finish before timeout */
>
>> #define LUSTRE_EIOCBQUEUED    529     /* iocb queued, will get completion
>> -                                        event */
>> +                                      * event
>> +                                      */
>
> #define LUSTRE_EIOCBQUEUED      529     /* iocb queued await completion event */
>
>> #define LUSTRE_EIOCBRETRY     530     /* iocb queued, will trigger a retry */
>>
>> /*
>> --
>> 2.7.4
>>
>
> Cheers, Andreas
> --
> Andreas Dilger
> Lustre Principal Architect
> Intel Corporation
>
>
>
>
>
>
>

