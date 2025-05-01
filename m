Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A741EF36B
	for <outreachy@lists.linux.dev>; Thu,  1 May 2025 14:16:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746109007; cv=none; b=YPQ0NFWNjg+VN6tr7XMje92nEcCQ+QCA+0QecLUA1vc0Odfn8K5YzrUX2+oegxTBEwavQiwu1dGka9VX3dcI7KtfJtQyBmoiGRg+3TsV19oQ6zQ/vWG3tmfF4luz0zqoBT3guT2a/mobv5PfcIq1CJwTueR/jCXNATQ67fMu77U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746109007; c=relaxed/simple;
	bh=j5318m9W6gx9LdmB8iOipKQED2D4klFe6dI9Bxzwyac=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KN/D7gzc0QN65Hwp8VaEFOnmYxH6tv1qWqSluzIKh3GEzfbROWGoHPWUo1ajtAVxbsFJqBN3cQQ1y5OWBbetYntVg0Zw4liF8sOJryv7WQDesif+1hGozwGCKiZvcs8LsfSZmVLIlWg/nDnzwGWLB/xzHYdnvFrRNSebthJUmX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=C8gECr5V; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="C8gECr5V"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1746109005;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hh+psC7IriBNgbVFATZKlPoKU4gpMxFOg5Sx9dcAY8Y=;
	b=C8gECr5VB+JMmkdbq0vTAdGKgEoxvJvCVtkzV+zvmVZ30d+AuIuaMxWfZGb/BZisdYWMyP
	SJo4eXtPWRWqLiwkAKlUkGkWWw0IA5M2jngRdMthtiEWkp3R74fYYhaZwpooEp45CTRp+I
	yFX1K6/UCfysDLMBBYkCZjO2jGz5bJg=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-73-sawDU3NTMBCIJJtpKoGyIQ-1; Thu, 01 May 2025 10:16:42 -0400
X-MC-Unique: sawDU3NTMBCIJJtpKoGyIQ-1
X-Mimecast-MFC-AGG-ID: sawDU3NTMBCIJJtpKoGyIQ_1746109001
Received: by mail-ed1-f71.google.com with SMTP id 4fb4d7f45d1cf-5edc07c75efso834576a12.1
        for <outreachy@lists.linux.dev>; Thu, 01 May 2025 07:16:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746109001; x=1746713801;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hh+psC7IriBNgbVFATZKlPoKU4gpMxFOg5Sx9dcAY8Y=;
        b=DyV7O9xf4sumj8BOvF5aTpIiTzzBeooxX3vO5lSesWjEoopImZYh4CBhralo3cksuo
         BnF0876xFRCCHrfDZwDdeyra0eyZwRHHs1zlyV7sdwT2qket30K8unA7B//iNF+IRffw
         lmCGmtZ0aJFIYvWpm+T7m9zmx6JWBVtOFGhqYFaQr+J1B74CqzW0W4VdvvU27ObvNw1/
         RAkpP6vcSxdHiQIhrqXKoc8SSdCzA9bhA0vkpu1CvujI/FYnA8UWMN0DPHYuxf1EXTiO
         WA4h9ja+RvK5RZgpIbu6piLxeyc7NEl3Pv5VdlQzXeyd0Rt1dn3jQr+yNN/1uJHRJ4WY
         oTMw==
X-Forwarded-Encrypted: i=1; AJvYcCWodufGUpWc88FwgJ6h7WAte+rECNkYyvuJwObhFBQRMQ/+L0eLfUP8FN0Zq72Qovf2Akrb1LMQbno=@lists.linux.dev
X-Gm-Message-State: AOJu0YzdqWs+vpWSsg6iG+wNMs04mb23ztt3JEWdoI/wZFezpMpRb/un
	zCw0QPNNaaqzWhlYQJ6N/BLlJheL71G0IiDWQevx6w+Xf9x7oKtiluOQTWFXWre1DIVUawmldTk
	ZhVJwLK6iF+oCoA8YGsvw/7rdHGql6Tf+w6LHpFrfCnQjD7DhRMuk7pRbRQ==
X-Gm-Gg: ASbGncvL4cG2Al7oFuVqzho91ZGihHd0oKq0QrKmZWxtnNPQAeZEHELje1iMfrj9HdR
	uIvpffpFJKmIVmFjP5LaJZZfA+68QvNyLv+Y4CIMhJVy6gFXc0Js563pYJSZYu9iLToS1eadiEc
	z9WmqVjTyn1NsrczOn/2GoGfWpnAKLICT9j8aRFPD+hdRT94Gjmhuy7FZ7KiY9LQ91rGtrk+YLW
	lyat9tbbvAP1r1LVogMwKufbRH6Z5eyTgZ/288PvYi8mmK3CxkjmZBP7mUissNsK8px3HlDCYED
	S4EuoqUIRlNbHDOHpTlwQ31UB6sHG7p5+/1IU1SY1GBnhK+Zmnw6ZfGAGQ//+WQuBVRh2aEeUQB
	DIR8LVGgfT61UpwDBgbehkLYAoz2/fVMRKr/V3N5Sx3h/k12Qd8j5QJMkucb6qA==
X-Received: by 2002:a17:907:3da8:b0:ace:dd27:7c68 with SMTP id a640c23a62f3a-acef49a523amr286269566b.46.1746109000792;
        Thu, 01 May 2025 07:16:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IERxZ6UQgY7nJnQihqgXO4g35TCN9e9LK+eXe6+W9Ewkl+z5FgYaucMhPyRZQ4ao8P7tj61SQ==
X-Received: by 2002:a17:907:3da8:b0:ace:dd27:7c68 with SMTP id a640c23a62f3a-acef49a523amr286267266b.46.1746109000405;
        Thu, 01 May 2025 07:16:40 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec? (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl. [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad0da516a9dsm45118166b.122.2025.05.01.07.16.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 May 2025 07:16:39 -0700 (PDT)
Message-ID: <4200c8b5-ec1b-49f4-b530-9067b1dc22c2@redhat.com>
Date: Thu, 1 May 2025 16:16:39 +0200
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] staging: media: Remove duplicate NULL tests on a
 value in pci
To: Abraham Samuel Adekunle <abrahamadekunle50@gmail.com>,
 outreachy@lists.linux.dev, julia.lawall@inria.fr
Cc: gregkh@linuxfoundation.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, andy@kernel.org, mchehab@kernel.org,
 sakari.ailus@linux.intel.com
References: <cover.1743685415.git.abrahamadekunle50@gmail.com>
 <26990d4a9d4419f9d4155a40595bc213acb671a0.1743685415.git.abrahamadekunle50@gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <26990d4a9d4419f9d4155a40595bc213acb671a0.1743685415.git.abrahamadekunle50@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: G4lwCOtijHBb_ZWW45ZWAPZwjWqh5okEs58Sktjvzkg_1746109001
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 3-Apr-25 3:26 PM, Abraham Samuel Adekunle wrote:
> When a value has been tested for NULL in an expression, a
> second NULL test on the same value in another expression
> is unnecessary when the value has not been assigned NULL.
> 
> Remove unnecessary duplicate NULL tests on the same value that
> has previously been NULL tested.
> 
> Found by Coccinelle
> 
> Signed-off-by: Abraham Samuel Adekunle <abrahamadekunle50@gmail.com>

Thank you for your patch.

I have merged this in my media-atomisp branch:
https://git.kernel.org/pub/scm/linux/kernel/git/hansg/linux.git/log/?h=media-atomisp

And this patch will be included in my next
pull-request to Mauro (to media subsystem maintainer)

Regards,

Hans




> ---
>  drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c b/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
> index e176483df301..0abac820299a 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
> @@ -1292,7 +1292,7 @@ static int gmin_get_config_dsm_var(struct device *dev,
>  	 * if it founds something different than string, letting it
>  	 * to fall back to the old code.
>  	 */
> -	if (cur && cur->type != ACPI_TYPE_STRING) {
> +	if (cur->type != ACPI_TYPE_STRING) {
>  		dev_info(dev, "found non-string _DSM entry for '%s'\n", var);
>  		ACPI_FREE(obj);
>  		return -EINVAL;

