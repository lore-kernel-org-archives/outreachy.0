X-GM-THRID: 6667430437644664832
X-Received: by 2002:a5d:638b:: with SMTP id p11mr1949460wru.6.1552401538775;
        Tue, 12 Mar 2019 07:38:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4c47:: with SMTP id n7ls4280595wrt.11.gmail; Tue, 12 Mar
 2019 07:38:57 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzKbcVekab5Nd9SZibfTC/n8+8c02IVva9O5zzGx87jeAxSfU8a+whAo+lEjcZk/zZhxlA1
X-Received: by 2002:adf:9e4c:: with SMTP id v12mr2012873wre.12.1552401537805;
        Tue, 12 Mar 2019 07:38:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552401537; cv=none;
        d=google.com; s=arc-20160816;
        b=E70VGT788WbfvEtJuSyHhq6cocv/ueHJnWm6igvYqbK6UH+nL2pVUGXa9xuyYwsgQ7
         bc6SYm0U0KUClWqUs6LuwEalPILqVVtQp93IP+QHu/zowpooug2gG07/4rrPPxQCqKwB
         c7OrYbrKsyKVmTlEBPVADn94QtWNDAYlxLgNfSxEINm6+wl724dnqilw85YRLvnMtou2
         b/Vog1ellbt7pBQo8DPeRBgwG2lYE+RVVh54qwiwZPf22wkvRv0g/dvuAmgfj8aBsFFT
         FQU4g1iC2+hqnr1zNkbi2gzEH+rtARntsgL/h3p2LbmgucC0M8qnC0qvbMj6C4Ycu/ju
         WDEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=wH71mUxHUs3DEqAxwlVDxdl0wOfqwz3vJUoxK2mt1BQ=;
        b=hGhY4nwzJpSbVVRrTK3UwcSu/CEGOAxr+XsY1quza5BsZtn9NIQK4DclnfndjTcyUw
         KbhDL9sRhEsSAbOh5E70UBr3WLD108FkLXvoStfvDeiCajI6bGO2fU/ikQSIA/6Yrgs3
         rmcX4TUQFHli7f3EGsmE1hCkg2HcmpXlIfzQHm+zraSbCPScWoPgIqoDBRVFCX2K/q6X
         gZidy0LNQVd5X2DmiqXEEWRVPUWeVX5VL5lhAilNWZsn++7nGY8wYQo74Xcytktndtxn
         jJCySf5X2omRADVEmM7ogq5PrLmVbmCSdotFEY6pEEACIa7ZImQO6wlu6FP6zxjhFenL
         JBlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id j43si186389wre.2.2019.03.12.07.38.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 07:38:57 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,471,1544482800"; 
   d="scan'208";a="373076077"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Mar 2019 15:38:44 +0100
Date: Tue, 12 Mar 2019 15:38:41 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: etsai042@gmail.com
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: speakup: Change else-if
 block order
In-Reply-To: <75c4ca91-0811-4a19-a9e2-29b127d419c9@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1903121536570.4097@hadrien>
References: <20190312091512.2315-1-etsai042@gmail.com> <alpine.DEB.2.20.1903121112510.4097@hadrien> <75c4ca91-0811-4a19-a9e2-29b127d419c9@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="----=_Part_2656_2049600376.1552401035594"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

------=_Part_2656_2049600376.1552401035594
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT



On Tue, 12 Mar 2019, etsai042@gmail.com wrote:

>
>
> On Tuesday, March 12, 2019 at 3:16:26 AM UTC-7, Julia Lawall wrote:
>
>       This would definitely be tha case of silencing a warning, because the
>       warning appears to be a false positive. �There is a return on the previous
>       line, but it is under an else, so it's not guaranteed to occur.
>
>       Furthermoew, by making this change, I guess you obtain another occurrence
>       of this warning, becaue your added code ends with a return and the next
>       line contains an else.
>
> I think the logic of checkpatch.pl is that, else under break or return directly is not recommended. But if the return is in a nested else, this warning will not appear since there can be other if-block or elseif-block behind it that
> doesn't always return. This change doesn't generate more warnings.
> In this file we can't simply delete the last else because the if-block behind it doesn't return in all cases.

As far as I recall from the context, there was an else return above the
removed code.  But perhaps I recall incorrectly.

> �
>       If this really seems to be an improvement, the log message needs to
>       explain why moving the if around preserves the semantics of the code. �Try
>       to avoid log messages that just say Change or Fix. �Those words don't give
>       any information about what you did or why it is useful.
>
>
> Though it silence this warning, I think this change is not necessary. Maybe checkpatch.pl should be revised, to check the whole if-else flow control, and to make sure to give out this warning only when all blocks behind the last else
> has a return?

Checkpatch just uses perl regular expressions.  It desn't parse the code.
It doesn't know the boundaries of the whole else branch.

julia

> Thanks for the log message advice, I won't use Change or Fix next time.
>
> Wentao
> �
>       julia
>
>       > ���������} else {
>       > �����������������name = NULL;
>       > �����������������if ((type != KT_SPKUP) && (key > 0) && (key <= num_key_names)) {
>       > --
>       > 2.11.0
>       >
>       > --
>       > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to outreach...@googlegroups.com.
>       > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190312091512.2315-1-etsai042%40gmail.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/75c4ca91-0811-4a19-a9e2-29b127d419c9%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
------=_Part_2656_2049600376.1552401035594--

