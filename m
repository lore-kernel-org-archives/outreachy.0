X-GM-THRID: 6609263444479705088
X-Received: by 2002:a9d:42d3:: with SMTP id c19mr21134106otj.33.1539089750436;
        Tue, 09 Oct 2018 05:55:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:bb04:: with SMTP id l4-v6ls2183289oif.0.gmail; Tue, 09
 Oct 2018 05:55:49 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62LJomoDP7wmvc7Q5utdeqrjfdXC77Z1/YKD2ZPJKuLLWaRgPh6mDJ0cTG3mXS/OtuI4RcA
X-Received: by 2002:aca:7591:: with SMTP id q139-v6mr20934986oic.11.1539089749732;
        Tue, 09 Oct 2018 05:55:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539089749; cv=none;
        d=google.com; s=arc-20160816;
        b=tYrIV4Aih6G54GLqnGBPlcepNU/NfZBPOhAz0mVEOCTlnr+5kpPmvDavkfaya9WWuH
         kvMOwY5rBheYAhfzbFKWxepWgoguqbCGVpMS2ZAEcOXcO3anqEgNOyIcKIVk+l3sXCwx
         44zWs9aqhIeTrMS7sHOxJ5W7GvcLYOibfFqZe8SDOCoYKM2xLzJJ7HyrfyPkVq9MCplb
         8dcuVMJAbu40XVtNsEdxuEOVXhvlqJzEPQtgcQrc3aOmk0VPvBcBUd8hCprdyQloO1nJ
         +A1c2H+fHVBGuRgz9mWreMDuxFPpr8yEAK/cH1WIki+ZkX2mJBJcRPy/RMFiJMsZfUrt
         9sTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=turB1WTKYlJbk8OtFKPPEG7aW2bduNyYE7KxRAsI7p8=;
        b=I8585bZoFMiPwD706DzQjM1WQfmllBgsAjLd5BekOacMvjd2095W3Vo4mJzFkY4E0M
         crW6axoFgNVNn6yvknTnAKiig2/F866XQAwlsQiBhc2TvkNHLZbNVVV8tTBz2GGTELEd
         OY8IBQOz6GGJmkIQ7z9VDTcd3MQIlqaxcmiIa0SWeJ0SFsMcJ1rU9CLjjc0XeNNPiNz/
         +TuR1zIVGsq4DR1iSR1WjIZsSG5lj5yYQFXhEaPJ4ua69eebZHAplh1C+27nZhsIGw7p
         ZNaP7It4l888NeavltdhNmW3W4dK1RZnI8uUfGeJ5eStDxaF8zMqVxLmKJYDmFzLp4sS
         5hQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm2 header.b=gFzqNaPw;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=hdbvjeWu;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.27 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com. [66.111.4.27])
        by gmr-mx.google.com with ESMTPS id u10si662977otc.0.2018.10.09.05.55.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Oct 2018 05:55:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.27 as permitted sender) client-ip=66.111.4.27;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm2 header.b=gFzqNaPw;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=hdbvjeWu;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.27 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id C40E721F22;
	Tue,  9 Oct 2018 08:55:48 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Tue, 09 Oct 2018 08:55:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm2; bh=turB1WTKYlJbk8OtFKPPEG7aW2b
	duNyYE7KxRAsI7p8=; b=gFzqNaPwsW7GnHgMCWEgs5AGJWZW4pHG8ozAr86pwp2
	IPUqv1EVjGXx06f5z40AiXBsazHWJzlVrSHZxWoYLf/ofIyslExdWbid8w2Ez6Wh
	qfO6ARztMLYQ65AlRFUGc4m0mSc2pks5GdoXccnIqRxm/MWotAEThJvA0MzPqRWe
	blgUJJDw0HlwDPRsHyg5uDqnooAvj5AZHGguIF3DGVjW+s0Bporipw6z0ArD4tmZ
	f+lFxxAB85fNcwRCwuHfoIi6O5/zvGtDrbYuKSvoxFEi1zeOCpvwcLKKtThaKoen
	Kms7e0kC4OoOE7xzTZF+ZYEzqZno6sLGEjF9LfWiL+A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=turB1W
	TKYlJbk8OtFKPPEG7aW2bduNyYE7KxRAsI7p8=; b=hdbvjeWuj6BXiZcYKfNGUh
	/iptQ1Z263sL8hR504M0bFUfAagLBCyTWevlaAHK/cPmwzY4QfApHvkCNQ4rqHs2
	+0IaOPnO4TwKVgUJPpRE+ljaSqfQH+R1W7Npy/kgjkTzvhtMzzxXI7ZzMeMdly4o
	ghOIBLxq0TGgqrMSPdUoQf5PbgI/f9vKr11HKHTMLzg5DndaGG6PcnJVbeRxopk7
	Q9m7EIk83s/gkRVK0fLWm/aXrmM2m1v2zJE+BcmHuNjE9B/jVLvabWoSXE3Y116A
	POk6+SAXbjP6bZSlp9xr29zrz0xTH+Alr3+dKVDYl18PbY/9RqehH86S6WAqFUDQ
	==
X-ME-Sender: <xms:VKW8Wz62FluCRPfqT2zddX3Z-lKKP-D72shbhtVGtXYkd2wVzsZDkA>
X-ME-Proxy: <xmx:VKW8Ww3AxfdKwMqxj16o8xnYlmcNs8pRtprUwJblG0K9IdDVGjSLgQ>
    <xmx:VKW8W5Qm6fWHhoWdPck4CdzDAdG0lLtz2sTNxpkcrkZIxJzLM5Nbfg>
    <xmx:VKW8W_NJzEdk5b3hx_TJJ4Wq5NjWjA1iDyiGzKBMCvfrHW_UNTgEug>
    <xmx:VKW8W9uT0OW6FPXtdp1tuavQ-sL5rZq0ONHcEtUyqa056gwa1feXUQ>
    <xmx:VKW8W3LC0VvsF4iqtmRpN7jim2_JeP3yPTbyc56t8MilOglqIzAwEg>
    <xmx:VKW8WzscDyMJd4Dr8aXYcinrOk-Bz7YoRAW4Tu4NVQG94xwH38bjYA>
Received: from localhost (ip-213-127-77-176.ip.prioritytelecom.net [213.127.77.176])
	by mail.messagingengine.com (Postfix) with ESMTPA id 075D9E4179;
	Tue,  9 Oct 2018 08:55:47 -0400 (EDT)
Date: Tue, 9 Oct 2018 14:55:46 +0200
From: Greg KH <greg@kroah.com>
To: Mamta Shukla <mamtashukla555@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.com,
	rspringer@google.com, toddpoynor@google.com, benchan@chromium.org
Subject: Re: [PATCH] staging: gasket: Replace symbolic permissions with octal
 permissions
Message-ID: <20181009125546.GA2700@kroah.com>
References: <20181006143316.GA23864@armorer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181006143316.GA23864@armorer>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Sat, Oct 06, 2018 at 08:03:16PM +0530, Mamta Shukla wrote:
> Use octal permissions in place of symbolic permissions to fix checkpatch
> warning.
> WARNING: Symbolic permissions 'S_IRUGO' are not preferred. Consider
> using octal permissions '0444'.
> 
> Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
> ---
>  drivers/staging/gasket/gasket_sysfs.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/gasket/gasket_sysfs.h b/drivers/staging/gasket/gasket_sysfs.h
> index f32eaf8..8b563d2 100644
> --- a/drivers/staging/gasket/gasket_sysfs.h
> +++ b/drivers/staging/gasket/gasket_sysfs.h
> @@ -40,7 +40,7 @@
>   */
>  #define GASKET_END_OF_ATTR_ARRAY                                               \
>  	{                                                                      \
> -		.attr = __ATTR(GASKET_ARRAY_END_TOKEN, S_IRUGO, NULL, NULL),   \
> +		.attr = __ATTR(GASKET_ARRAY_END_TOKEN, 0444, NULL, NULL),   \

This is very odd, why is this define even needed?

>  		.data.attr_type = 0,                                           \
>  	}
>  
> @@ -75,7 +75,7 @@ struct gasket_sysfs_attribute {
>  
>  #define GASKET_SYSFS_RO(_name, _show_function, _attr_type)                     \
>  	{                                                                      \
> -		.attr = __ATTR(_name, S_IRUGO, _show_function, NULL),          \
> +		.attr = __ATTR(_name, 0444, _show_function, NULL),          \

This should use __ATTR_RO() instead, right?

thanks,

greg k-h

