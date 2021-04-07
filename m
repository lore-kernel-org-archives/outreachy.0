X-GM-THRID: 6946995103705595904
X-Received: by 2002:a1c:c341:: with SMTP id t62mr3648849wmf.27.1617809248229;
        Wed, 07 Apr 2021 08:27:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:cc94:: with SMTP id p20ls1254569wma.0.gmail; Wed, 07 Apr
 2021 08:27:26 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzkN3BaX53LfskqqTkqVa5GbF1aqpu+gE/4pyx0kuSojuVwD8ZT/kmBExF3lpFpxTclkinw
X-Received: by 2002:a05:600c:21a:: with SMTP id 26mr3702272wmi.84.1617809246467;
        Wed, 07 Apr 2021 08:27:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617809246; cv=none;
        d=google.com; s=arc-20160816;
        b=O3f/dzrh5SoJQD03iYWM0XIQ3HnSYZsIp3R82ccCXFdnM4tldraaYKFxoeqHvIZcDH
         4z7J+RsA4ZWN7hHY7aQANvsBQpfbCtDJTdVNNdzbq2yPoR1bieg2YoPwSbNcB/nxHJJC
         V50LwMItD0IM2HsDPDXjLSAJZ5VSSZuqmuLjjkEjoUiElQ5bJ4UYrByJIKnDt5Wna1mL
         Ii6nOEB22AOnO5UkcAXXGZ3SrYMgFWogBctqF5+BC5IXuaBEs40yI4Dg+CNKlLSJMoaO
         KpTPFB8WUFyiT3egBy58M1yeRk3hmBP7AC/nMVDUvSb+3aT46o3qf7/GV7Y5/Z6JBEDv
         1b8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=/yvspusDwD2Yz4H8lHTCCe0s/3szVQ04FM7RR51J0KU=;
        b=DU6JPhObOi+wGCB+FtmVLRBBKOLXdkAwsqXLrMZTTpLVaoavPQBspk0n+9J3+t0Kzx
         k6lnuSA93azBw0DKFeS1U+HDnx5gJAlmujXrKqtCoBUgaXJ8tD7aI2qsrwbRo1kMKYl1
         5vgL4cAHJcnDlEztamuJi/yeNueuXHXrnQoBBBy7PahvLzSE+oo/rGOAOdjJKmeaZfHf
         hfBHzf9HrvQQ4IQX+5rioteRX5ZOanaJvuqxubiqJvbod29kRrAFi/x7chBWtTvtv5zj
         NUfkDw/8y4x2hAyNVX7YKMIQIMBmgHxRQwMPVnlAFM9Qcpew++i9cSAb7UWdh2WmgbmA
         Gw3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b=NowVl4K+;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.28 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb2-smtp-cloud7.xs4all.net (lb2-smtp-cloud7.xs4all.net. [194.109.24.28])
        by gmr-mx.google.com with ESMTPS id y12si3013061wrw.3.2021.04.07.08.27.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Apr 2021 08:27:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.28 as permitted sender) client-ip=194.109.24.28;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b=NowVl4K+;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.28 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
	by smtp-cloud7.xs4all.net with ESMTPA
	id UA5SlSuMKMxedUA5VlJ54J; Wed, 07 Apr 2021 17:27:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
	t=1617809246; bh=/yvspusDwD2Yz4H8lHTCCe0s/3szVQ04FM7RR51J0KU=;
	h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
	 Subject;
	b=NowVl4K+7YSSXJ+KhuUz+0dm51y00wjWrMox7iWtaRZK8hnCi9DLNHR+CZxTZM+h8
	 43P6o2B/kPX01skLA9c7P3BEgfVD1cT7+yxUcXs87xg+9fZnCmolC064U4DpJ395gU
	 qAU75bCqyZzXijU6n3mWfjYxUTZxxrm0eAzRHQosZ1HDvR8id6PiKw2iWscyU41HUV
	 AXm99t7LBi6TFVaxgSDS4KAMoOTU8Kx6p9DreysqXRcH8GE1VUQXO+AL3Bp/n/B1La
	 4SWtDT7KAPNDUXXaP/nB/ODmmkGeetVKWjPwL+cDSQJwUvy/ziDSZT+DT6NR95BWz5
	 whDq2P1QURP1Q==
Subject: Re: [PATCH 0/7] staging: media: zoran: Eliminate camelcase
To: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>,
 clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
References: <cover.1617472411.git.zhansayabagdaulet@gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <0bbd7601-f97c-96c3-bce3-223738536a91@xs4all.nl>
Date: Wed, 7 Apr 2021 17:27:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <cover.1617472411.git.zhansayabagdaulet@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4xfDBZlQ2oNVN1KeNZG4iM0INfUP94bL1ZV3hwc81k2YtvUuDQ1DZsVyWcVizGh7XVnRQL8u9rbsx6/82vUnyqPNw5uOFG6tR7snA2MBRfj/OTyMjRdTlM
 eHijmC1DhLzrjIwZ6IO4D1D77gb6vPgMWnx2eNEUcTrVyL21WTITU16t2P7Wi92eEdKTwtzNCaqXpMwC6TT7gh0rB9Hk3DeQcxmI+gdym3K6SkR1wqH9dsP8
 obYeSm+QaNwXhY8FoLihcqynFFBSXMrgvWdqIxD6wW5gJRJEPwxbHP/GkQDXvsGecTDgqUS9QLBLnlT1ypA2YJJW9EfGQ8d+5VO609dTB6kvthUHsNCvhT8A
 YWc/HKOnqEfhoyZUOmOFDR7xQtx9LlirjLYObrUdphhP9jm1BhdIKSF7yxOSyEvmwHfyfZT61ENxlYmC/SGvquxNvsQaOwuLIF/15MeZ6xHIeSJFD///5fWc
 yG5rpPIchquKGN3J

Hi Zhansaya,

On 03/04/2021 20:08, Zhansaya Bagdauletkyzy wrote:
> This patchset fixes 'avoid camelcase' warning by converting local variables to lowercase and separating words using '_'.
> Renaming of each variable is implemented in separate patches.
> 
> Zhansaya Bagdauletkyzy (7):
>   Rename 'HEnd' to 'h_end'
>   Rename 'VEnd' to 'v_end'
>   Rename 'DispMode' to 'disp_mode'
>   Rename 'VidWinWid' to 'vid_win_wid'
>   Rename 'VidWinHt' to 'vid_win_ht'
>   Rename 'We' to 'we'
>   Rename 'He' to 'he'
> 
>  drivers/staging/media/zoran/zoran_device.c | 48 +++++++++++-----------
>  1 file changed, 24 insertions(+), 24 deletions(-)
> 

Looks good. I'll take these patches.

You can use this reference to record your contributions:

https://patchwork.linuxtv.org/project/linux-media/list/?series=5052

The patch states will change to Accepted once it is merged in our media tree
here: https://git.linuxtv.org/media_tree.git/log/

I hate CamelCase, so this is a nice cleanup :-)

Regards,

	Hans


