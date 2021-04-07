X-GM-THRID: 6946280249577439232
X-Received: by 2002:a17:906:2a0f:: with SMTP id j15mr921015eje.159.1617790340074;
        Wed, 07 Apr 2021 03:12:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:c653:: with SMTP id z19ls2242572edr.2.gmail; Wed, 07 Apr
 2021 03:12:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwbXmy4Ig90s684BuXxPevsu89sq0pW+ULIerSc03cZlRij8ODCFYdjRpNCpjwp4SELZYfM
X-Received: by 2002:a05:6402:4407:: with SMTP id y7mr3432125eda.247.1617790338578;
        Wed, 07 Apr 2021 03:12:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617790338; cv=none;
        d=google.com; s=arc-20160816;
        b=IruIpgHJEwEmM325xkWW2ZRBy38C8DQtBPTVUGmHjQx3wL61eQULqG6OVRzLdfOm7P
         dD2Wksb4ZYV6hL9gPMyao+Yo5eYFqISsuL8btFhT4ekXLuDHPJs+0lJ6tTxTIilM8ymh
         Yj3AnZFnwd+vHfyVTVxcf4XCBok0Rx7RoPV60rlzzrVFuY/3UDfeFbyKUGCP9r+j1orl
         kE3/IgbzHIi9wfUDJvxeBHN+X5C5t1GNU+B9YGqSAWG+05WokIEzq3zr61I7VqBpF5v9
         QaakdEVgU6T3PU7P361XJ2U5KXE3FRt0Gjwn+gpTyIgZ0g81e4qVw03TvGsgExlxK2bK
         /1QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:dkim-signature;
        bh=cnW8Miq1TWv53pZqb7mzi5QVdfXncZOSRl4v/p3c/6U=;
        b=peoc8A7JM/Rfd5C9Wz361dgTX1eLZBbqw9zwbI8Q+cH1m/t7F41FiPL2JqHA1HtAdd
         IQEjXD6WCP+LRGUYCPYEELmIfKGWtmCeWQmjOS29EZ4nUp8Q5xj7ccziIEuOYO5muChM
         5jfJkznuVyQ740jo73dUjUCnVLPksylDpTWfKCV+F0PWTeGzYWUiT4r3X/y6mpJDQSeB
         Ma2U1JlzQJ4M/FTVCZD6g78MdYFSCUdGf/RyCb2+SKx50h+a2ZBFF7GjmLHZd+JP2b2V
         x4zUMbu/zGPToR/vBNvb+T6gyI/76xXcQ2faP48Ux3Df1rLEvwF9TozpFEU5IPwl+A1b
         qukQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JqYU1KiU;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::42c as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com. [2a00:1450:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id b26si1004795edy.4.2021.04.07.03.12.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 03:12:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::42c as permitted sender) client-ip=2a00:1450:4864:20::42c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JqYU1KiU;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::42c as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42c.google.com with SMTP id a4so374614wrr.2
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Apr 2021 03:12:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=cnW8Miq1TWv53pZqb7mzi5QVdfXncZOSRl4v/p3c/6U=;
        b=JqYU1KiUm5PZ5TLA7sa6EUkAllMAdnAjEwZRK3s7MWld2Jt7lCA2RrNny9s9A2jHJO
         7OcoFC2PaY7e1yP314AhKf+oHo2uCbCw+oECpVq6j9g4B61UvZXzeb1Ldm//3p+KP+6M
         0irPqamLD8Y5bPQgmsnzRnZv8wljGa84L2/bxzZd6nYqLwqLoo60dVBxuo7ysM3LHmq+
         zGjOO1YtaNRPzOL0r5mmAn4gdtQPPUlFNc/Z5pBB/bpnpyysxB2p/TKwZfOImM1SE6P+
         hWs+XkFDZh1iYLyZqaEOUmjmtbg9tixuWVJM51NfS+P0RsVY/Gp5HtPAwh6GyH4V2eYG
         PKyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=cnW8Miq1TWv53pZqb7mzi5QVdfXncZOSRl4v/p3c/6U=;
        b=HpAWvjyoskNpU+aAPb+TEs8SG6upW8H6cS9vIVFDq4njkeDvjJpTnd8PI0mPlddmGC
         /70zVEZTpclvgwJNJZV/gq+3GcWTn/zxzghxJxddMfkX39IgHAuBYM1KtYyeEcNLt0lB
         fbKqlOWlT1Q2jXeEqZaWlZr28Xv6PGJc2mOvRiRKz5GSwg9/yVVqioBEUfJzNYSBoJMX
         T3GXyqjjW+x83KrJAvlP0j++0PVipwXIgiEE5R7fpTi+mQgegg+S1sg9MlzqodPUWjBi
         qSwf+nfXylIrCa6XEjDM4FdcbUFM3bZoYoC1AyhGsgxo1juAD2/T/nWlz/TfsH1Capyp
         guhw==
X-Gm-Message-State: AOAM533lRQLNp1Lf6JCWixFTeCGvhcfDZEIn43FLzgm6xZNO3d9aZrKz
	jAcIJAunKx5ENf2Qe5RRpnO7k0RLv7eGLg==
X-Received: by 2002:a5d:654a:: with SMTP id z10mr3385652wrv.335.1617790338218;
        Wed, 07 Apr 2021 03:12:18 -0700 (PDT)
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from ?IPv6:2001:818:de85:7e00:ef5c:3f2a:a646:d6ec? ([2001:818:de85:7e00:ef5c:3f2a:a646:d6ec])
        by smtp.gmail.com with ESMTPSA id v185sm7524858wmb.25.2021.04.07.03.12.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 03:12:17 -0700 (PDT)
Subject: Re: [Outreachy kernel] [PATCH] staging: emxx_udc: Ending line with
 argument
To: Julia Lawall <julia.lawall@inria.fr>
Cc: gregkh@linuxfoundation.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
References: <20210401195457.24512-1-martinsdecarvalhobeatriz@gmail.com>
 <alpine.DEB.2.22.394.2104012314480.2908@hadrien>
 <82580331-13dc-ed79-72e7-3984fd2f75f9@gmail.com>
 <alpine.DEB.2.22.394.2104051708370.2981@hadrien>
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Message-ID: <27df05b1-a0bf-2a0e-48e9-3df7c0ea3480@gmail.com>
Date: Wed, 7 Apr 2021 11:12:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.22.394.2104051708370.2981@hadrien>
Content-Type: multipart/alternative;
 boundary="------------9F5E978BA36B0992E54B09B8"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------9F5E978BA36B0992E54B09B8
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


Em 05/04/21 16:09, Julia Lawall escreveu:
>  > > On Mon, 5 Apr 2021, Beatriz Martins de Carvalho wrote: > >> >> Em 
01/04/21 22:16, Julia Lawall escreveu: >>> >>> On Thu, 1 Apr 2021, 
Beatriz Martins de Carvalho wrote: >>> >>>> Cleans up check of "Lines 
should not end with a '('" with >>>> argument present in next line in 
file emxx_udc.c >>> The coding style documentation encourages remaining 
within 80 >>> characters. I'm not sure that the ( warning is worth 
increading >>> the excess beyond 80 characters (or introducing it in the 
last >>> case). >>> >>> julia >> Thanks, prof Julia, how the checkpath 
now warning only if line >> length of 100 characters, I used it for 
reference. > > I think it was changed so that people would leave as is 
code that > was really more readable at 85 or 90 characters. But the > 
documentation still encourages 80 characters. > > julia
Prof Julia,
I didn't fix up my patch based on your comments, because to do this was 
to revert all my patch or will break a code line if I remaining within 
80 characters.
How the code line still stays between 85 or 90 I assumed that was ok 
stay in this format.

What should I do with the patch?
One thing I will do, it improves the subject, but about the code style?
>  >> >> I will take the suggestions of checkpatch with more attention. >> 
 >> Beatriz >> >>>> Signed-off-by: Beatriz Martins de Carvalho >>>> 
<martinsdecarvalhobeatriz@gmail.com> --- >>>> 
drivers/staging/emxx_udc/emxx_udc.c | 11 ++++------- 1 file >>>> 
changed, 4 insertions(+), 7 deletions(-) >>>> >>>> diff --git 
a/drivers/staging/emxx_udc/emxx_udc.c >>>> 
b/drivers/staging/emxx_udc/emxx_udc.c index >>>> 
741147a4f0fe..20f53cf6e20f 100644 --- >>>> 
a/drivers/staging/emxx_udc/emxx_udc.c +++ >>>> 
b/drivers/staging/emxx_udc/emxx_udc.c @@ -1073,9 +1073,8 @@ >>>> static 
int _nbu2ss_epn_in_pio(struct nbu2ss_udc *udc, struct >>>> nbu2ss_ep 
*ep, i_word_length = length / sizeof(u32); if >>>> (i_word_length > 0) { 
for (i = 0; i < i_word_length; i++) { - >>>> _nbu2ss_writel( - 
&preg->EP_REGS[ep->epnum - 1].EP_WRITE, - >>>> p_buf_32->dw); + 
_nbu2ss_writel(&preg->EP_REGS[ep->epnum - >>>> 1].EP_WRITE, + 
p_buf_32->dw); >>>> >>>> p_buf_32++; } @@ -1225,8 +1224,7 @@ static void 
 >>>> _nbu2ss_restert_transfer(struct nbu2ss_ep *ep) return; >>>> >>>> 
if (ep->epnum > 0) { - length = _nbu2ss_readl( - >>>> 
&ep->udc->p_regs->EP_REGS[ep->epnum - 1].EP_LEN_DCNT); + >>>> length = 
_nbu2ss_readl(&ep->udc->p_regs->EP_REGS[ep->epnum - >>>> 
1].EP_LEN_DCNT); >>>> >>>> length &= EPN_LDATA; if (length < 
ep->ep.maxpacket) @@ -1462,8 >>>> +1460,7 @@ static void 
_nbu2ss_epn_set_stall(struct nbu2ss_udc >>>> *udc, for (limit_cnt = 0 ; 
limit_cnt < IN_DATA_EMPTY_COUNT ; >>>> limit_cnt++) { - regdata = 
_nbu2ss_readl( - >>>> &preg->EP_REGS[ep->epnum - 1].EP_STATUS); + 
regdata = >>>> _nbu2ss_readl(&preg->EP_REGS[ep->epnum - 1].EP_STATUS); 
 >>>> >>>> if ((regdata & EPN_IN_DATA) == 0) break; -- 2.25.1 >>>> >>>> 
-- You received this message because you are subscribed to the >>>> 
Google Groups "outreachy-kernel" group. To unsubscribe from >>>> this 
group and stop receiving emails from it, send an email to >>>> 
outreachy-kernel+unsubscribe@googlegroups.com. To view this >>>> 
discussion on the web visit >>>> 
https://groups.google.com/d/msgid/outreachy-kernel/20210401195457.24512-1-martinsdecarvalhobeatriz%40gmail.com. 
 >>>> >> >> >>>> --
>> You received this message because you are subscribed to the Google  >> Groups "outreachy-kernel" group. To unsubscribe from this group and 
 >> stop receiving emails from it, send an email to >> 
outreachy-kernel+unsubscribe@googlegroups.com. To view this >> 
discussion on the web visit >> 
https://groups.google.com/d/msgid/outreachy-kernel/82580331-13dc-ed79-72e7-3984fd2f75f9%40gmail.com. 
 >>

--------------9F5E978BA36B0992E54B09B8
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    Em 05/04/21 16:09, Julia Lawall escreveu:<br>
    <span style="white-space: pre-wrap; display: block; width: 98vw;">&gt; 
&gt; 
&gt; On Mon, 5 Apr 2021, Beatriz Martins de Carvalho wrote:
&gt; 
&gt;&gt; 
&gt;&gt; Em 01/04/21 22:16, Julia Lawall escreveu:
&gt;&gt;&gt; 
&gt;&gt;&gt; On Thu, 1 Apr 2021, Beatriz Martins de Carvalho wrote:
&gt;&gt;&gt; 
&gt;&gt;&gt;&gt; Cleans up check of "Lines should not end with a '('" with
&gt;&gt;&gt;&gt; argument present in next line in file emxx_udc.c
&gt;&gt;&gt; The coding style documentation encourages remaining within 80
&gt;&gt;&gt; characters. I'm not sure that the ( warning is worth increading
&gt;&gt;&gt; the excess beyond 80 characters (or introducing it in the last
&gt;&gt;&gt; case).
&gt;&gt;&gt; 
&gt;&gt;&gt; julia
&gt;&gt; Thanks, prof Julia, how the checkpath now warning only if line
&gt;&gt; length of 100 characters, I used it for reference.
&gt; 
&gt; I think it was changed so that people would leave as is code that
&gt; was really more readable at 85 or 90 characters.  But the
&gt; documentation still encourages 80 characters.
&gt; 
&gt; julia
</span><br>
    Prof Julia,<br>
    I didn't fix up my patch based on your comments, because to do this
    was to revert all my patch or will break a code line if I remaining
    within 80 characters. <br>
    How the code line still stays between 85 or 90 I assumed that was ok
    stay in this format.<br>
     <br>
    What should I do with the patch?<br>
    One thing I will do, it improves the subject, but about the code
    style?<br>
    <span style="white-space: pre-wrap; display: block; width: 98vw;">&gt; 
&gt;&gt; 
&gt;&gt; I will take the suggestions of checkpatch with more attention.
&gt;&gt; 
&gt;&gt; Beatriz
&gt;&gt; 
&gt;&gt;&gt;&gt; Signed-off-by: Beatriz Martins de Carvalho 
&gt;&gt;&gt;&gt; <a class="moz-txt-link-rfc2396E" href="mailto:martinsdecarvalhobeatriz@gmail.com">&lt;martinsdecarvalhobeatriz@gmail.com&gt;</a> --- 
&gt;&gt;&gt;&gt; drivers/staging/emxx_udc/emxx_udc.c | 11 ++++------- 1 file
&gt;&gt;&gt;&gt; changed, 4 insertions(+), 7 deletions(-)
&gt;&gt;&gt;&gt; 
&gt;&gt;&gt;&gt; diff --git a/drivers/staging/emxx_udc/emxx_udc.c 
&gt;&gt;&gt;&gt; b/drivers/staging/emxx_udc/emxx_udc.c index
&gt;&gt;&gt;&gt; 741147a4f0fe..20f53cf6e20f 100644 ---
&gt;&gt;&gt;&gt; a/drivers/staging/emxx_udc/emxx_udc.c +++
&gt;&gt;&gt;&gt; b/drivers/staging/emxx_udc/emxx_udc.c @@ -1073,9 +1073,8 @@
&gt;&gt;&gt;&gt; static int _nbu2ss_epn_in_pio(struct nbu2ss_udc *udc, struct
&gt;&gt;&gt;&gt; nbu2ss_ep *ep, i_word_length = length / sizeof(u32); if
&gt;&gt;&gt;&gt; (i_word_length &gt; 0) { for (i = 0; i &lt; i_word_length; i++) { -
&gt;&gt;&gt;&gt; _nbu2ss_writel( -					&amp;preg-&gt;EP_REGS[ep-&gt;epnum - 1].EP_WRITE, -
&gt;&gt;&gt;&gt; p_buf_32-&gt;dw); +				_nbu2ss_writel(&amp;preg-&gt;EP_REGS[ep-&gt;epnum - 
&gt;&gt;&gt;&gt; 1].EP_WRITE, +					       p_buf_32-&gt;dw);
&gt;&gt;&gt;&gt; 
&gt;&gt;&gt;&gt; p_buf_32++; } @@ -1225,8 +1224,7 @@ static void
&gt;&gt;&gt;&gt; _nbu2ss_restert_transfer(struct nbu2ss_ep *ep) return;
&gt;&gt;&gt;&gt; 
&gt;&gt;&gt;&gt; if (ep-&gt;epnum &gt; 0) { -		length = _nbu2ss_readl( -
&gt;&gt;&gt;&gt; &amp;ep-&gt;udc-&gt;p_regs-&gt;EP_REGS[ep-&gt;epnum - 1].EP_LEN_DCNT); +
&gt;&gt;&gt;&gt; length = _nbu2ss_readl(&amp;ep-&gt;udc-&gt;p_regs-&gt;EP_REGS[ep-&gt;epnum - 
&gt;&gt;&gt;&gt; 1].EP_LEN_DCNT);
&gt;&gt;&gt;&gt; 
&gt;&gt;&gt;&gt; length &amp;= EPN_LDATA; if (length &lt; ep-&gt;ep.maxpacket) @@ -1462,8
&gt;&gt;&gt;&gt; +1460,7 @@ static void _nbu2ss_epn_set_stall(struct nbu2ss_udc 
&gt;&gt;&gt;&gt; *udc, for (limit_cnt = 0 ; limit_cnt &lt; IN_DATA_EMPTY_COUNT ;
&gt;&gt;&gt;&gt; limit_cnt++) { -			regdata = _nbu2ss_readl( -
&gt;&gt;&gt;&gt; &amp;preg-&gt;EP_REGS[ep-&gt;epnum - 1].EP_STATUS); +			regdata =
&gt;&gt;&gt;&gt; _nbu2ss_readl(&amp;preg-&gt;EP_REGS[ep-&gt;epnum - 1].EP_STATUS);
&gt;&gt;&gt;&gt; 
&gt;&gt;&gt;&gt; if ((regdata &amp; EPN_IN_DATA) == 0) break; -- 2.25.1
&gt;&gt;&gt;&gt; 
&gt;&gt;&gt;&gt; -- You received this message because you are subscribed to the
&gt;&gt;&gt;&gt; Google Groups "outreachy-kernel" group. To unsubscribe from
&gt;&gt;&gt;&gt; this group and stop receiving emails from it, send an email to
&gt;&gt;&gt;&gt; <a class="moz-txt-link-abbreviated" href="mailto:outreachy-kernel+unsubscribe@googlegroups.com">outreachy-kernel+unsubscribe@googlegroups.com</a>. To view this
&gt;&gt;&gt;&gt; discussion on the web visit 
&gt;&gt;&gt;&gt; <a class="moz-txt-link-freetext" href="https://groups.google.com/d/msgid/outreachy-kernel/20210401195457.24512-1-martinsdecarvalhobeatriz%40gmail.com">https://groups.google.com/d/msgid/outreachy-kernel/20210401195457.24512-1-martinsdecarvalhobeatriz%40gmail.com</a>.
&gt;&gt;&gt;&gt;
&gt;&gt;
&gt;&gt;
&gt;&gt;&gt;&gt; 
</span>--<br>
    <span style="white-space: pre-wrap; display: block; width: 98vw;">&gt;&gt; You received this message because you are subscribed to the Google
&gt;&gt; Groups "outreachy-kernel" group. To unsubscribe from this group and
&gt;&gt; stop receiving emails from it, send an email to
&gt;&gt; <a class="moz-txt-link-abbreviated" href="mailto:outreachy-kernel+unsubscribe@googlegroups.com">outreachy-kernel+unsubscribe@googlegroups.com</a>. To view this
&gt;&gt; discussion on the web visit 
&gt;&gt; <a class="moz-txt-link-freetext" href="https://groups.google.com/d/msgid/outreachy-kernel/82580331-13dc-ed79-72e7-3984fd2f75f9%40gmail.com">https://groups.google.com/d/msgid/outreachy-kernel/82580331-13dc-ed79-72e7-3984fd2f75f9%40gmail.com</a>.
&gt;&gt;</span><br>
  </body>
</html>

--------------9F5E978BA36B0992E54B09B8--

