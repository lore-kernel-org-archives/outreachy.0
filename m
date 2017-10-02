X-GM-THRID: 6472300341971910656
X-Received: by 10.223.154.112 with SMTP id z103mr281891wrb.0.1506951751675;
        Mon, 02 Oct 2017 06:42:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.155.208 with SMTP id e16ls3393313wrc.11.gmail; Mon, 02 Oct
 2017 06:42:30 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBlogH4G7FvLFsLw02DMJsNZaPVHgNOPGGUr1OImX+CJ3moW04jRVEFNWW3BFJOqcb3QNXa
X-Received: by 10.28.138.195 with SMTP id m186mr1846442wmd.9.1506951750834;
        Mon, 02 Oct 2017 06:42:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506951750; cv=none;
        d=google.com; s=arc-20160816;
        b=F0Yd6nXX414DYh4yuzPtG0Az9auUa602OyD5cEIGeNiJsb2eMkYosRHC4xW47PO1G/
         9lhSoa/lBzt7RLR9QXVqfQBAVnHbIsmQp2P+54N8jFfBnmRVNpuQaLM+cCYBqjVJmP7J
         0UnpLIVEPc9r1CJjttIu2lqexGOzeq3Zex1vej8NcyKEKvLMBQJBoj5OoyxZWeZkvJTK
         RmfKPv6KpfmNuWu/84rfEdqyaTDrTfBZi+QFPvw+92lh8ZuYePeoDngNlJi/sujzwDCP
         jAW4G6GBbhw6B37YLswBKAfD2ltHrdXynswhoD4/5elJMHua5AhZuPGedC/ZuRpeGBES
         59og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=DHBm6yz+F+4uilN2fOdVDEZUGcqpqGQLY1NuGQIwGA0=;
        b=SyPRAmpPkwzjJbzrI+Kd0je/KkfDVKSUI9T4ZgkembhagotIXv2cMJXJYTnnoGFbzY
         doTvP6zld7dvXSy+/E+Jsnz6j3xD6yEnIoD6cCb0wGTd7/HH62yM4MvUSskfdLsQKozi
         a5xTQcVFAXPWpFd2VtPEyOgDp31ZeXDEzv9Sau2YOhVHiL9TcaNs5PFDrn3lb761Jc6X
         ngilBuViLw5rvHmXPl4QDOf11s8zAjVvsvGL2OQNKt6BYoVoJm9KFRkq8azlQGn8Scba
         99vNSPtQWQByHUMCFsxL0xUrACrW5uRCyk+hQfFPNo65+Ka+kLG8j+U/FOSeahTma6ga
         P28Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 196si448989wmk.4.2017.10.02.06.42.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 06:42:30 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,469,1500933600"; 
   d="scan'208";a="293753382"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Oct 2017 15:42:30 +0200
Date: Mon, 2 Oct 2017 15:42:28 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Keerthi Reddy <keerthigd4990@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: use BIT macro
In-Reply-To: <ae1db421-6943-4276-8d28-702fda3bcd34@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1710021540340.2949@hadrien>
References: <20171002131042.GA12477@manoharreddy> <alpine.DEB.2.20.1710021514560.3515@hadrien> <ae1db421-6943-4276-8d28-702fda3bcd34@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="----=_Part_3034_2025246927.1506951379063"

------=_Part_3034_2025246927.1506951379063
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT



On Mon, 2 Oct 2017, Keerthi Reddy wrote:

>
>
> On Monday, October 2, 2017 at 6:45:43 PM UTC+5:30, Julia Lawall wrote:
>
>
>       On Mon, 2 Oct 2017, Keerthi Reddy wrote:
>
>       > This commit changes changes left shift operator to use BIT
>       macro
>       >
>       > Signed-off-by: Keerthi Reddy <keerth...@gmail.com>
>       > ---
>       > �.../staging/lustre/include/linux/lnet/lib-types.h �| 26
>       +++++++++++-----------
>       > �1 file changed, 13 insertions(+), 13 deletions(-)
>       >
>       > diff --git
>       a/drivers/staging/lustre/include/linux/lnet/lib-types.h
>       b/drivers/staging/lustre/include/linux/lnet/lib-types.h
>       > index eea3b8e..15837a3 100644
>       > --- a/drivers/staging/lustre/include/linux/lnet/lib-types.h
>       > +++ b/drivers/staging/lustre/include/linux/lnet/lib-types.h
>       > @@ -160,9 +160,9 @@ struct lnet_libmd {
>       > ���������} md_iov;
>       > �};
>       >
>       > -#define LNET_MD_FLAG_ZOMBIE����������������(1 << 0)
>       > -#define LNET_MD_FLAG_AUTO_UNLINK��������(1 << 1)
>       > -#define LNET_MD_FLAG_ABORTED����������������(1 << 2)
>       > +#define LNET_MD_FLAG_ZOMBIE����������������BIT(0)
>       > +#define LNET_MD_FLAG_AUTO_UNLINK��������BIT(1)
>       > +#define LNET_MD_FLAG_ABORTED����������������BIT(2)
>       >
>       > �struct lnet_test_peer {
>       > ���������/* info about peers we are trying to fail */
>       > @@ -287,9 +287,9 @@ struct lnet_ni {
>       > � * of old LNet, so there shouldn't be any compatibility issue
>       > � */
>       > �#define
>       LNET_PING_FEAT_INVAL����������������(0)����������������/* no
>       feature */
>       > -#define LNET_PING_FEAT_BASE����������������(1 << 0)��������/*
>       just a ping */
>       > -#define LNET_PING_FEAT_NI_STATUS��������(1 << 1)��������/*
>       return NI status */
>       > -#define LNET_PING_FEAT_RTE_DISABLED��������(1 << 2)��������/*
>       Routing enabled */
>       > +#define LNET_PING_FEAT_BASE����������������BIT(0)��������/*
>       just a ping */
>       > +#define LNET_PING_FEAT_NI_STATUS��������BIT(1)��������/*
>       return NI status */
>       > +#define LNET_PING_FEAT_RTE_DISABLED��������BIT(2)��������/*
>       Routing enabled */
>       >
>       > �#define
>       LNET_PING_FEAT_MASK����������������(LNET_PING_FEAT_BASE | \
>       > �����������������������������������������
>       LNET_PING_FEAT_NI_STATUS)
>       > @@ -440,21 +440,21 @@ struct lnet_rtrbuf {
>       >
>       > �enum lnet_match_flags {
>       > ���������/* Didn't match anything */
>       > -��������LNET_MATCHMD_NONE��������= (1 << 0),
>       > +��������LNET_MATCHMD_NONE��������= BIT(0),
>       > ���������/* Matched OK */
>       > -��������LNET_MATCHMD_OK����������������= (1 << 1),
>       > +��������LNET_MATCHMD_OK����������������= BIT(1),
>       > ���������/* Must be discarded */
>       > -��������LNET_MATCHMD_DROP��������= (1 << 2),
>       > +��������LNET_MATCHMD_DROP��������= BIT(2),
>       > ���������/* match and buffer is exhausted */
>       > -��������LNET_MATCHMD_EXHAUSTED��������= (1 << 3),
>       > +��������LNET_MATCHMD_EXHAUSTED��������= BIT(3),
>       > ���������/* match or drop */
>       > ���������LNET_MATCHMD_FINISH��������= (LNET_MATCHMD_OK |
>       LNET_MATCHMD_DROP),
>       > �};
>       >
>       > �/* Options for lnet_portal::ptl_options */
>       > -#define LNET_PTL_LAZY����������������(1 << 0)
>       > -#define LNET_PTL_MATCH_UNIQUE��������(1 << 1)��������/*
>       unique match, for RDMA */
>       > -#define LNET_PTL_MATCH_WILDCARD��������(1 << 2)��������/*
>       wildcard match,
>       > +#define LNET_PTL_LAZY����������������BIT(0)
>       > +#define LNET_PTL_MATCH_UNIQUE��������BIT(1)��������/* unique
>       match, for RDMA */
>       > +#define LNET_PTL_MATCH_WILDCARD��������BIT(2)��������/*
>       wildcard match,
>       > ������������������������������������������������� * request
>       portal
>       > ������������������������������������������������� */
>
>       It looks like the final comment could be on only one line?
>
> �
> It's a multi line comment style that author has used throughout the file.
> Similarly we�
> can see the same style in lines 420, 412 too.�

If the comment can be on a single line without exceeding 80 characters
that would be more readable.  Your BIT code is shorter than the original
code, so it could now be possible.  If needed, the comment could be one
space closer to the BIT calls and/or the BIT calls could be closer to the
macro names.  One line is always easier to read than multiple lines, if it
fits in 80 characters.

julia
------=_Part_3034_2025246927.1506951379063--

