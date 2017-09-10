X-GM-THRID: 6463854288984604672
X-Received: by 10.202.93.213 with SMTP id r204mr4658774oib.61.1505028787041;
        Sun, 10 Sep 2017 00:33:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.36.140 with SMTP id f134ls3629726ita.16.canary-gmail; Sun,
 10 Sep 2017 00:33:06 -0700 (PDT)
X-Received: by 10.129.97.132 with SMTP id v126mr5120942ywb.114.1505028786338;
        Sun, 10 Sep 2017 00:33:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505028786; cv=none;
        d=google.com; s=arc-20160816;
        b=wqxVKb9tYMxOSvQTB++bVbu+u2xcnz0/9qSIjI4CsUf6tx6zwcFzDslwiLZ5Pyrtxj
         Ztiuo3E9GHYHnCAPhVAnnlnl6zJ3IKt0woaGkcki19Bsfj2JBg/7hB0ng7U9jLmnBkfR
         ycednvVSHr5wBg//NIfA9DeJqLhA7GnVykDsLmyNvAHcTVtlKZ4tSIaniHEso+wwZ2qW
         ratqnWXy6y/4bgQkzlMgvAoj1uPKmC/I++6qRfA0RydifY/C/xsLf5jylcjGh/DIPmCy
         4e3MYpn/FguS9KVbFJvIMl6o4DKpSmCrAcL1fdo2yfiBrzLnzY8P5n6Z9Yp6ssJy2eIF
         R1cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:to:subject:dkim-signature
         :arc-authentication-results;
        bh=qD/RNfYaUImejtZHMx3CtonNZGo/XfYJ8Uz6/kmXnCg=;
        b=uqmRi82b1nL7gs6l1wUo+NWyg2/ibUlAA0g183ZN7dEaBED8fDo6y6aiVTzhEIO0m9
         H5mYj0dB1DptbjKhvXCJeGSCrmIAs5Fej1Uhl3im70+ipK7H2yukZ+sv0Y5BLQXjtXPQ
         1ItsO3oCsoEhT8/S2nYon+fL6M19UDYhJ1/5np22g3JIJFYoaGpyMm532Dog02F6W/q2
         Op76A8939VonaoKoMRpPJkyze/AF8GZ+dYkHz8aRPRoqKXn8atgBDP9+LxGFQZJdQvVo
         ABCK9aXcDInw3rget7LQQo8W6D5PHtHHl0UJzHfE63vCZRulOdyhkCbuKWTqfXFFbBTH
         ARGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lVlfJmKC;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id g19si643755pfd.14.2017.09.10.00.33.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 00:33:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lVlfJmKC;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id g13so3539712pfm.2
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Sep 2017 00:33:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=qD/RNfYaUImejtZHMx3CtonNZGo/XfYJ8Uz6/kmXnCg=;
        b=lVlfJmKCJsU7VK6o+LK3fCCP3h3aUH7BPmYC0Fh6EdhkhCjt8ud/m/bM2JqXCGrVUh
         xAH1QO1LLe3WLitf+GGrVOWr5od+g3gcNH+CeBetD34oo4GyIyVf0lizJJBl6ZfCe54S
         ta8Df9whK29bxHpgg+FsHfHVrpjanis4p5HUC1ErSuszs1vIPFkFhjTlrUPXPmNx0UNJ
         duM/RMYjGe6/5O4t7yKWjG7lf6h+whPkTLwBInHRqRsq5oedXEl/Yn1nxT7KWU4D0ahu
         Xg9YqLt/RFtR8OcgWDr1gwehZnw6geG92gTGGC/0qi9wb7CW1qUg92ef2lMidC8aiESP
         uAnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=qD/RNfYaUImejtZHMx3CtonNZGo/XfYJ8Uz6/kmXnCg=;
        b=JyC9QVEvgtVqeviBE7y5Ah5FESFRIJF1RDkb59mHtr5NmdRThobJS5I0r4dB+zJ3LN
         hHlSSKuMF2YGcr8PmMSdU6QsAW6/O5crJ+wJDipjyr2ICz1j05LEt8QVpKpUr21XmRgW
         KPvu/vSI6KH4Bm6UM0ZvrA9BS+pHgT9flB8uYzPueHhaMB38Li8M3avWvn8SmpMKcwxC
         gU17FXwSdwHbDB+unkuP7gzzOeejXkhFuW1FAZ/1JVuwYzwoAfOhqnMGoyaNnF7Lc86B
         hqAlGdPDphc6mCOGl8j9KRaBvczCVZiggqUlaxgC1vpVffJPT4wDINewcodtQaHKtpNp
         ZeeQ==
X-Gm-Message-State: AHPjjUgTaioOsKlEB23IwGEfJrKeFVgYPD0b/b79K+jocgdmDBKvcMXk
	wTSnR9eDBPYA73NvoQg=
X-Google-Smtp-Source: ADKCNb5s3N56oj4278358ExxkykOVL+yE9sOibLcfiFQCGo2GpcWYFiYnj8fxw+AtGvOA0fsvdgnqg==
X-Received: by 10.98.67.209 with SMTP id l78mr8241740pfi.3.1505028785752;
        Sun, 10 Sep 2017 00:33:05 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from [10.0.2.15] ([45.113.152.93])
        by smtp.gmail.com with ESMTPSA id t16sm10695131pfj.117.2017.09.10.00.33.03
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 00:33:05 -0700 (PDT)
Subject: Re: [PATCH v2] Staging: rtlwifi: Remove unnecessary 'out of memory'
 message.
To: gregkh@linuxfoundation.org, julia.lawall@lip6.fr,
 outreachy-kernel@googlegroups.com
References: <1504983347-2957-1-git-send-email-shreeya.patel23498@gmail.com>
From: Shreeya Patel <shreeya.patel23498@gmail.com>
Message-ID: <f2b8805b-50f6-8c78-ab32-734aac8ddbea@gmail.com>
Date: Sun, 10 Sep 2017 13:03:01 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <1504983347-2957-1-git-send-email-shreeya.patel23498@gmail.com>
Content-Type: multipart/alternative;
 boundary="------------FC752A8ECDA93DD05BA3A487"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------FC752A8ECDA93DD05BA3A487
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


I would like to notify that I had sent the first version of this patch 
to my mentor Julia lawall.
Also this patch is showing me some false positive errors of whitespace.
There are no errors in the file which i have modified and also in the 
commit message.

On Sunday 10 September 2017 12:25 AM, Shreeya Patel wrote:

> This patch removes unnecessary 'out of memory' message to make
> the code more efficient.
>
> Problem found by checkpatch.
>
> Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> ---
>
> Changes in v2:
>    -Add a tab before the return statement.
>
>   drivers/staging/rtlwifi/rc.c | 4 +---
>   1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rtlwifi/rc.c b/drivers/staging/rtlwifi/rc.c
> index 65de0c7..779a5c6 100644
> --- a/drivers/staging/rtlwifi/rc.c
> +++ b/drivers/staging/rtlwifi/rc.c
> @@ -281,10 +281,8 @@ static void *rtl_rate_alloc_sta(void *ppriv,
>   	struct rtl_rate_priv *rate_priv;
>   
>   	rate_priv = kzalloc(sizeof(*rate_priv), gfp);
> -	if (!rate_priv) {
> -		pr_err("Unable to allocate private rc structure\n");
> +	if (!rate_priv)
>   		return NULL;
> -	}
>   
>   	rtlpriv->rate_priv = rate_priv;
>   


--------------FC752A8ECDA93DD05BA3A487
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix"><br>
      <font size="-1">I would like to notify that I had sent the first
        version of this patch to my mentor Julia lawall.<br>
        Also this patch is showing me some false positive errors of
        whitespace.<br>
        There are no errors in the file which i have modified and also
        in the commit message.<br>
      </font>
      <p>On Sunday 10 September 2017 12:25 AM, Shreeya Patel wrote:</p>
    </div>
    <blockquote type="cite"
      cite="mid:1504983347-2957-1-git-send-email-shreeya.patel23498@gmail.com">
      <pre wrap="">This patch removes unnecessary 'out of memory' message to make
the code more efficient.

Problem found by checkpatch.

Signed-off-by: Shreeya Patel <a class="moz-txt-link-rfc2396E" href="mailto:shreeya.patel23498@gmail.com">&lt;shreeya.patel23498@gmail.com&gt;</a>
---

Changes in v2:
  -Add a tab before the return statement.

 drivers/staging/rtlwifi/rc.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtlwifi/rc.c b/drivers/staging/rtlwifi/rc.c
index 65de0c7..779a5c6 100644
--- a/drivers/staging/rtlwifi/rc.c
+++ b/drivers/staging/rtlwifi/rc.c
@@ -281,10 +281,8 @@ static void *rtl_rate_alloc_sta(void *ppriv,
 	struct rtl_rate_priv *rate_priv;
 
 	rate_priv = kzalloc(sizeof(*rate_priv), gfp);
-	if (!rate_priv) {
-		pr_err("Unable to allocate private rc structure\n");
+	if (!rate_priv)
 		return NULL;
-	}
 
 	rtlpriv-&gt;rate_priv = rate_priv;
 
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------FC752A8ECDA93DD05BA3A487--

