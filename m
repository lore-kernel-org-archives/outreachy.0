X-GM-THRID: 6805399652543758336
X-Received: by 2002:a19:6e0f:: with SMTP id j15mr3920691lfc.76.1584561499880;
        Wed, 18 Mar 2020 12:58:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3188:: with SMTP id i8ls19375lfe.4.gmail; Wed, 18
 Mar 2020 12:58:18 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsku4TuQkxc8eBK+3Ci6B3D50W73ahbxTE2Bz3lbmHYK+uXLVyB7JX6htMtMmphy1yRRXmN
X-Received: by 2002:a19:6716:: with SMTP id b22mr3866944lfc.46.1584561498440;
        Wed, 18 Mar 2020 12:58:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584561498; cv=none;
        d=google.com; s=arc-20160816;
        b=d2UL4hRfL+smf94vc+1VB/3/X2nkQZr2bUmfF2uL+BtGN21BW5iy4mH0vx6UEPCM1r
         QTF0JRHCXELUROq0dxm1qVCpcAudcVQK6KcCyESE9SzSZc0RzlpzhDruqyejT3dxs1BP
         LN7ibhXgw1t7nuaIAV/0qdoWiENK9tYle+VGAXj0WUpPAzvYErQcE8tUGhPw4rPT65NY
         uW1OzMJBR7Kj6berrXutcn6gpqt4fGHaR4UmTNEBQt51d1mvJtgvJk1MwDtK/LujgpNu
         sqc1ICATnu9zsy/MaF5oWGmlnUYwNJVg3c8RC8bv/hF6unCUKSfu6t/LTvVOSiKYb/eF
         8V+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=fIii/0fagajKrXGsRklEGirD/XPNR5YjphSMMdZ8yXk=;
        b=uKj/1H0f8pMs0wL8sxlE8AXPTpgyPGywBw6lNGhQ/Yfk+bYQGSzanmhDApmz4DWlzE
         /+5v1wgjeOYK/gmXFayzE5GTXaxj65MiNMF9hgSVDGl0U8/+rry2P2fL0v1evV25qXqw
         ceqZoe9bbzc0kSAT7LPARwZAujY07CkXY39UkwsTuMy1h+asZAo+qKrUV7SahgqPiqyD
         aJX/0FbU23K0aPwn/BOSAJcUYApsIPgnM0dsaJtuQOgWDeJVZRqtTc82HCGEFO7uvY1X
         lGgs26ClKK7JvedlFD1M0tlBSL2JRaG7GkyaiWvAv0hc+J0hnz/coqW9vjVHr6DJRWeX
         XuyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@metafoo.de header.s=default2002 header.b=TOdJZZvq;
       spf=pass (google.com: domain of lars@metafoo.de designates 78.46.137.84 as permitted sender) smtp.mailfrom=lars@metafoo.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=metafoo.de
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id b26si362307ljk.4.2020.03.18.12.58.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 18 Mar 2020 12:58:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of lars@metafoo.de designates 78.46.137.84 as permitted sender) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@metafoo.de header.s=default2002 header.b=TOdJZZvq;
       spf=pass (google.com: domain of lars@metafoo.de designates 78.46.137.84 as permitted sender) smtp.mailfrom=lars@metafoo.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=metafoo.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=metafoo.de;
	 s=default2002; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
	MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=fIii/0fagajKrXGsRklEGirD/XPNR5YjphSMMdZ8yXk=; b=TOdJZZvqu5V411xR4uBucHo83e
	Fu53u8UGCe4AGvCOk5FsZvZ0NCUHsiVtELi07OalWWajn3+zlZP/sqyu0ppp+wHozpVPYJdqL0Ymf
	fyBqrC1ZBFxiYA07BT7SjuQs/jE5z2YU0mpTTZuiicxAPUsR6hkUi7PkdV/D3rVtAbFpLZ/sK4Oj9
	pv8nMB4I6bZ1N4im2hbnW+bG+9HPIAUQQPPmWwu9wYtbQKkzyDcjGMPMWOSGU0wDLQlyDsgLqKNVb
	dApUKINAppMlpkhjQaiWRtSfzGPU/2niRqxYZOJH5PWNKgtr9BUQpaPt8GBTqv20Tkl2Jo7DMsgJa
	ivSAhmrw==;
Received: from sslproxy02.your-server.de ([78.47.166.47])
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.89_1)
	(envelope-from <lars@metafoo.de>)
	id 1jEepU-0005IR-3v; Wed, 18 Mar 2020 20:58:16 +0100
Received: from [93.104.115.49] (helo=[192.168.178.20])
	by sslproxy02.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <lars@metafoo.de>)
	id 1jEepT-000OGE-Pw; Wed, 18 Mar 2020 20:58:15 +0100
Subject: Re: [PATCH v2 0/3] staging: iio: adc: General code reformatting /
 cleanup patchset
To: Deepak R Varma <mh12gx2825@gmail.com>, outreachy-kernel@googlegroups.com,
 gregkh@linuxfoundation.org, daniel.baluta@gmail.com,
 kieran.bingham@ideasonboard.com
Cc: Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
 pmeerw@pmeerw.net, linux-iio@vger.kernel.org
References: <cover.1584557481.git.mh12gx2825@gmail.com>
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <c711dfb8-dfe2-4d48-1d9f-414d48adda06@metafoo.de>
Date: Wed, 18 Mar 2020 20:58:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <cover.1584557481.git.mh12gx2825@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.102.2/25755/Wed Mar 18 14:14:00 2020)

On 3/18/20 8:07 PM, Deepak R Varma wrote:
> Address code formatting warnings and check messages flagged by
> checkpatch script. Also include another improvement for correcting macro
> name typos. Changes intended to improve readability of code.
> 
> Changes since v1:
> 	1. Add separate patch for code re-indentation comment
> 	2. Add separate patch for correcting macro names as suggested by
> 	   Lars-Peter.
> 	3. Update variable name from sync* to sinc* as suggested by
> 	   Stefano.
> 	4. Revert patch intended to add space around "-" operator. It
> 	   was a string with a "-" sign further formatted using
> 	   stringification. That patch is out of the patchset now.
> 
> 
> Deepak R Varma (3):
>    staging: iio: adc: ad7192: Re-indent enum labels
>    staging: iio: adc: ad7192: Correct macro names from SYNC to SINC
>    staging: iio: adc: ad7192: Reformat lines crossing 80 columns

Hi,

The patches all look very good, thanks.

Just one thing, make sure that you base your patches on Jonathan's 
latest development tree. The ad7192 drivers was just moved out of 
staging 2 weeks ago, so the file path in your patches is no longer 
correct. But the patches themselves look good and should be applied 
regardless of whether the driver is in staging or not.

See 
https://git.kernel.org/pub/scm/linux/kernel/git/jic23/iio.git/commit/?h=togreg&id=b581f748cce00f4cbd6c76c4f301840403dece7b 
for the patch that moved it out of staging.

Jonathan's development tree is the togreg branch from his repository at 
https://git.kernel.org/pub/scm/linux/kernel/git/jic23/iio.git/.

You can add it as an additional remote to your git checkout using

git remote add iio 
git://git.kernel.org/pub/scm/linux/kernel/git/jic23/iio.git
git fetch iio

And then you can reference the dev branch as iio/togreg to for example 
rebase your local branch ontop of it.

- Lars

