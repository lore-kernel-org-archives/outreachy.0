X-GM-THRID: 6463854288984604672
X-Received: by 10.99.120.197 with SMTP id t188mr7438992pgc.173.1505149930424;
        Mon, 11 Sep 2017 10:12:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.83.12 with SMTP id h12ls4227126iob.24.gmail; Mon, 11 Sep
 2017 10:12:09 -0700 (PDT)
X-Received: by 10.13.255.65 with SMTP id p62mr7766811ywf.41.1505149929565;
        Mon, 11 Sep 2017 10:12:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505149929; cv=none;
        d=google.com; s=arc-20160816;
        b=lH4Aki7ZVb/OZLx+fQrdR3VeWxOtGhsf+8SiNdw9OB1P/7K4c6lXNHjTZZkjiHzlY6
         ol4R1+lRcoNfH2lJUKZ2olpHgnjbmELU/ghSJVhMghAYemUNVndx/d2fYpP5zBC7XeY9
         iI2ymiHfTYPPGuzwVtoTT0Sp8UR9pRFWm0DGQL3d9CCQRM4T+kWiR6R15Mziri9txaEl
         Uv91cZkfirGkKfBPYDFDcjX2TIWbW47aMHtX9fXVKrrvAjtuQdbBefqqhNRmnWgMMQHi
         corFW7eQD9NzCLwnYYcdFnZ8JxGONRxPAxGmwoX1BIF6GHgECczj23ttqsu7A7p/9eYN
         tmZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:to:subject:dkim-signature
         :arc-authentication-results;
        bh=sw/bjW9psUJLXBxXtOU7czycx8po83VILUHawCs1wys=;
        b=UIRJtoaEL7oUKj76o29x/9W4LVRpCTe82jh1UEojuumhu2ktoC69ggIneOKahdP6th
         DKLlyycaDRQJ2ylTkW10NUQTUGeNN1Y8TMMbTtEuyI82xMs4TEI0MNdYACj1aIL8o4P9
         tlbahNDkmoLbmDNkSrZTFr4Yz2xTPmTt0ppiTuYupu6XrJJnTmq579qXHsY6EVK0Qcsb
         Y3md0uKlB8SG0CX4PG76te57qfAc4nzMSGeMzcqgxlk+R66twrYqQRmbYg2bnRY1+yte
         L9L5n+CKgI3Pr+E3+4NV9K839CLlC9WUARX/kU4Ehw9cjzDQBlXZBTLFa5lXX/IeEskx
         zubA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=G4Ms3I7v;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id k76si933394pfb.5.2017.09.11.10.12.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 10:12:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=G4Ms3I7v;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id d8so4906906pgt.3
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Sep 2017 10:12:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=sw/bjW9psUJLXBxXtOU7czycx8po83VILUHawCs1wys=;
        b=G4Ms3I7vFHXxCN+vLl+xAtwqcH1Bxlm80+Wvyj1iQ+83Atkdxoqsyfk1UH0aytrtw/
         MVPLDpL/cx1erCxlg2NS9WWqutRUps3OzvrjlPyVsMmQEODb//QznLWsIV9OMP76wOOn
         hLWryRotV84DXn2XIU7deGhxDf40tSIS38d4BIy/uc13PHTNJHWZUM20wE22Wb2lz0Hi
         P9DLDegXusP6jIxfCFo1dD3JYTnZWUNs8DQcVGRbkP3WESGmqqMEfW8j7CTtnlc+bpDg
         BSEEVjoe1AkDwl24JQckUaytstc11fiHo/XiZfdSC4jDRHw4ouJ+4JMSmeHVS55sODrk
         nCng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=sw/bjW9psUJLXBxXtOU7czycx8po83VILUHawCs1wys=;
        b=fsMlPkRt0Xgrj5FsFvjhwmcVOucqgszLAk+zErPGB2saDIFHcV1186wH0SDfCdBfu6
         eBQVEiTujLSXq/ouuUAdcFuAlnGoPuPvmWF7P6R4fi49R5TcSSBYEYbGUnM4K1cyuGpR
         yXkU4kGJzNWRfE0tuuRezRUo3b4BAbtvLNISAQ/Xt6jyfuOMWCaZ+kXaqd0IeR5RUwoD
         cZHMKOXSDvZswosFTnTR9kOlhpwRQd8dsEsGfIUXUezWrEqNnEEBaZgvBDn3dduFAixo
         wH2m5R0499Q6ATthdNUUPFZ1Q0c7MDgjvbRbTaX1X8dhKT8SM3qRsUleICIxthCP/HcB
         Qlqw==
X-Gm-Message-State: AHPjjUge9WnNsRP6zS69zwseYmfQHIrtO1d0eGf7T6N/JGzsCYCQ5QuK
	srGe2euYjrviMQVuDHs=
X-Google-Smtp-Source: ADKCNb6iwIfmDexe5KQz/v4mT2A/V9jwAF6runhIQ/PiRymNJAxp7gYFaev6ZsEOl2IMMas+0Y/aZA==
X-Received: by 10.98.214.198 with SMTP id a67mr12549708pfl.214.1505149929139;
        Mon, 11 Sep 2017 10:12:09 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from [10.0.2.15] ([45.113.152.93])
        by smtp.gmail.com with ESMTPSA id p77sm4603230pfa.92.2017.09.11.10.12.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 10:12:08 -0700 (PDT)
Subject: Re: [Outreachy kernel] Re: [PATCH v2] Staging: rtlwifi: Remove
 unnecessary 'out of memory' message.
To: outreachy-kernel@googlegroups.com
References: <1504983347-2957-1-git-send-email-shreeya.patel23498@gmail.com>
 <7469455c-545c-4b30-af5b-5c54fc343c90@googlegroups.com>
From: Shreeya Patel <shreeya.patel23498@gmail.com>
Message-ID: <9e1515a5-880b-7094-6636-cfc3e09293e1@gmail.com>
Date: Mon, 11 Sep 2017 22:42:06 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <7469455c-545c-4b30-af5b-5c54fc343c90@googlegroups.com>
Content-Type: multipart/alternative;
 boundary="------------1931E180E2A6B2EEF0E3B21C"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------1931E180E2A6B2EEF0E3B21C
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit



On Monday 11 September 2017 10:40 PM, Srishti Sharma wrote:
>
>
> On Sunday, September 10, 2017 at 12:25:54 AM UTC+5:30, Shreeya Patel 
> wrote:
>
>     This patch removes unnecessary 'out of memory' message to make
>     the code more efficient.
>
>     Problem found by checkpatch.
>
>     Signed-off-by: Shreeya Patel <shreeya.p...@gmail.com <javascript:>>
>     ---
>
>     Changes in v2:
>       -Add a tab before the return statement.
>
>      drivers/staging/rtlwifi/rc.c | 4 +---
>      1 file changed, 1 insertion(+), 3 deletions(-)
>
>     diff --git a/drivers/staging/rtlwifi/rc.c
>     b/drivers/staging/rtlwifi/rc.c
>     index 65de0c7..779a5c6 100644
>     --- a/drivers/staging/rtlwifi/rc.c
>     +++ b/drivers/staging/rtlwifi/rc.c
>     @@ -281,10 +281,8 @@ static void *rtl_rate_alloc_sta(void *ppriv,
>              struct rtl_rate_priv *rate_priv;
>
>              rate_priv = kzalloc(sizeof(*rate_priv), gfp);
>     -        if (!rate_priv) {
>     -                pr_err("Unable to allocate private rc structure\n");
>     +        if (!rate_priv)
>                      return NULL;
>     -        }
>
>              rtlpriv->rate_priv = rate_priv;
>
>     -- 
>     2.7.4
>
>
> After you format your patch , open it in vim and try running this 
> command :%s/\s\+$//e
> This removes trailing whitespaces , this might work for you . It works 
> for me .
>
> Regards,
> Srishti
Sure, I will try this.
   Thanks.
> -- 
> You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kernel+unsubscribe@googlegroups.com 
> <mailto:outreachy-kernel+unsubscribe@googlegroups.com>.
> To post to this group, send email to outreachy-kernel@googlegroups.com 
> <mailto:outreachy-kernel@googlegroups.com>.
> To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/7469455c-545c-4b30-af5b-5c54fc343c90%40googlegroups.com 
> <https://groups.google.com/d/msgid/outreachy-kernel/7469455c-545c-4b30-af5b-5c54fc343c90%40googlegroups.com?utm_medium=email&utm_source=footer>.
> For more options, visit https://groups.google.com/d/optout.


--------------1931E180E2A6B2EEF0E3B21C
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On Monday 11 September 2017 10:40 PM,
      Srishti Sharma wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:7469455c-545c-4b30-af5b-5c54fc343c90@googlegroups.com">
      <div dir="ltr"><br>
        <br>
        On Sunday, September 10, 2017 at 12:25:54 AM UTC+5:30, Shreeya
        Patel wrote:
        <blockquote class="gmail_quote" style="margin: 0;margin-left:
          0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">This
          patch removes unnecessary 'out of memory' message to make
          <br>
          the code more efficient.
          <br>
          <br>
          Problem found by checkpatch.
          <br>
          <br>
          Signed-off-by: Shreeya Patel &lt;<a href="javascript:"
            target="_blank" gdf-obfuscated-mailto="0dV1YywnAwAJ"
            rel="nofollow" onmousedown="this.href='javascript:';return
            true;" onclick="this.href='javascript:';return true;"
            moz-do-not-send="true">shreeya.p...@gmail.com</a>&gt;
          <br>
          ---
          <br>
          <br>
          Changes in v2:
          <br>
            -Add a tab before the return statement.
          <br>
          <br>
           drivers/staging/rtlwifi/rc.c | 4 +---
          <br>
           1 file changed, 1 insertion(+), 3 deletions(-)
          <br>
          <br>
          diff --git a/drivers/staging/rtlwifi/rc.c
          b/drivers/staging/rtlwifi/rc.c
          <br>
          index 65de0c7..779a5c6 100644
          <br>
          --- a/drivers/staging/rtlwifi/rc.c
          <br>
          +++ b/drivers/staging/rtlwifi/rc.c
          <br>
          @@ -281,10 +281,8 @@ static void *rtl_rate_alloc_sta(void
          *ppriv,
          <br>
                   struct rtl_rate_priv *rate_priv;
          <br>
           
          <br>
                   rate_priv = kzalloc(sizeof(*rate_priv), gfp);
          <br>
          -        if (!rate_priv) {
          <br>
          -                pr_err("<wbr>Unable to allocate private rc
          structure\n");
          <br>
          +        if (!rate_priv)
          <br>
                           return NULL;
          <br>
          -        }
          <br>
           
          <br>
                   rtlpriv-&gt;rate_priv = rate_priv;
          <br>
           
          <br>
          -- <br>
          2.7.4
          <br>
        </blockquote>
        <div><br>
        </div>
        <div>After you format your patch , open it in vim and try
          running this command :%s/\s\+$//e  </div>
        <div>This removes trailing whitespaces , this might work for you
          . It works for me . </div>
        <div><br>
        </div>
        <div>Regards,</div>
        <div>Srishti <br>
        </div>
      </div>
    </blockquote>
    Sure, I will try this.<br>
      Thanks.<br>
    <blockquote type="cite"
      cite="mid:7469455c-545c-4b30-af5b-5c54fc343c90@googlegroups.com">
      -- <br>
      You received this message because you are subscribed to the Google
      Groups "outreachy-kernel" group.<br>
      To unsubscribe from this group and stop receiving emails from it,
      send an email to <a
        href="mailto:outreachy-kernel+unsubscribe@googlegroups.com"
        moz-do-not-send="true">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
      To post to this group, send email to <a
        href="mailto:outreachy-kernel@googlegroups.com"
        moz-do-not-send="true">outreachy-kernel@googlegroups.com</a>.<br>
      To view this discussion on the web visit <a
href="https://groups.google.com/d/msgid/outreachy-kernel/7469455c-545c-4b30-af5b-5c54fc343c90%40googlegroups.com?utm_medium=email&amp;utm_source=footer"
        moz-do-not-send="true">https://groups.google.com/d/msgid/outreachy-kernel/7469455c-545c-4b30-af5b-5c54fc343c90%40googlegroups.com</a>.<br>
      For more options, visit <a
        href="https://groups.google.com/d/optout" moz-do-not-send="true">https://groups.google.com/d/optout</a>.<br>
    </blockquote>
    <br>
  </body>
</html>

--------------1931E180E2A6B2EEF0E3B21C--

