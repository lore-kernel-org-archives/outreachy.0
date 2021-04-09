X-GM-THRID: 6948900055812145152
X-Received: by 2002:adf:fdcd:: with SMTP id i13mr1629713wrs.185.1617953214310;
        Fri, 09 Apr 2021 00:26:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:d1c8:: with SMTP id b8ls6277442wrd.3.gmail; Fri, 09 Apr
 2021 00:26:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzaDtikoLdeZK00/Rs4NfJd2BprKNbs7tFCCiX9GpaBKWe14N4jwaC7N7mEvLVs6a/neRnv
X-Received: by 2002:a05:6000:10c3:: with SMTP id b3mr15981393wrx.96.1617953212841;
        Fri, 09 Apr 2021 00:26:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617953212; cv=none;
        d=google.com; s=arc-20160816;
        b=xT8vKyXHa/yS4h4fpMIleDKKskZE/GZIqHDzsyKC9P/gZwfbZpAxpXcYCMeN2c5nKu
         vdYujZxvpKuQsloOgD6/aSi+ZWfhgAbkCxKAGYSrH8NxXuc00GjbHaZ5N8dgX6uNjrJ+
         /OFSfElro3HmlmWcwgwIhlW/QWiVwH0FcVNHTFCzDAZTBUvkU1jt4yBcRRDSgaCrdTq3
         3JHieJxOKXrdgVWP4YOT8Fv9j/cszfceu3AXsl4dJ7iJjXYBR8kwJlTOLUQl+R7xtZJ9
         xYWNxDdwB8yIUQ0lLjp4wZKZG4ZpI+6Eef6ddVO0Rn/hQ29LPiMLwYJr/q1jla8reE+t
         8qbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=CAEIwKj3X76oz7KxEQomi77buHSBZk7Ze/1D90Ei9e8=;
        b=ufqgIYnrcta3r4gje3uHdfBcSlKj8cvwFMUPN+kcmbguZxfSeLChjgPNvOGvwgqku8
         +fSVW/Y2GsQ5+hLuPSfZJaRW91exGvO+bIFjZcriaJkwt8HAhugQmfpsWqx7PlKnp3tg
         qO8yy/L/yHyC/2Deevp0C2loNCV+oeDxJdvIJ9VWZRSYIJfVFMFUPlo2jvlkmL3D1Ncn
         OLPcKKlRD3nT9gNfblddLRSa6vuK9LIZJ4KmyvUiSbayUNB593iUQge+VajRJa7DN+Ei
         83AAG25AzxMl6frvCoOaGhy67u+QCCidmX54GnssJJCAk5a1OWeuh2CqhWHQfOfH1+Bk
         f7hw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b="n/a/t+7B";
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.25 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb2-smtp-cloud8.xs4all.net (lb2-smtp-cloud8.xs4all.net. [194.109.24.25])
        by gmr-mx.google.com with ESMTPS id o12si150336wrw.1.2021.04.09.00.26.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 00:26:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.25 as permitted sender) client-ip=194.109.24.25;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b="n/a/t+7B";
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.25 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
	by smtp-cloud8.xs4all.net with ESMTPA
	id UlXUlYlbJgIC3UlXYlBMSQ; Fri, 09 Apr 2021 09:26:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
	t=1617953212; bh=CAEIwKj3X76oz7KxEQomi77buHSBZk7Ze/1D90Ei9e8=;
	h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
	 Subject;
	b=n/a/t+7B5rmX7paTuiC16pUydqp1HEhmpUQRg2gG/3yZz/jKlf5eIur6ZME4hYVdG
	 xk7M6vxSahTZm56g3KTavl1sgIpGJ7CpPbQr1m+XoXNHy5vx/sY/dFygidfX/cHfAv
	 KKtD0ehym1BN5BvrkrjbvJSl486lb7Q9r8/5Fh/Loa/mBlzHJdgZjUlJqQGF++aWTa
	 /Xyfrzot9+7Xwz0Tx+3ZIceb3Bhxd7g/Dm/ciL3yGazLnX0MIdSFKHTULuJ4uKhmZ4
	 uKvtaIYWVlmjCGnvAp894DlT4gjgOuVAVBN+JHfKZYeU2gO0nrUPq3w+MjZY8gt3a5
	 +lKIvyqkeVPgA==
Subject: Re: [PATCH] staging: media: zoran: reduce length of a line
To: Mitali Borkar <mitaliborkar810@gmail.com>, clabbe@baylibre.com,
 mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 mitali_s@me.iitr.ac.in
References: <YG9zvMnYlZVbJhQn@kali>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <003b2d17-2fe4-c3f3-6b1e-60d0301a1413@xs4all.nl>
Date: Fri, 9 Apr 2021 09:26:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <YG9zvMnYlZVbJhQn@kali>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4xfFJJJBK955hvzlpccXP9vNThirZiryIss2Ro6C/Jnh15Fz9TQVqW45+Le3jHQFhuV2ph0EZwwhhVlvEDAkehFBJ7WcHYzetIPV/E2JMgh5PDMxefQBxK
 PB1bQae+4seIWsEbB1QHg9qnTHGJnjx6Rki8XVoUD8ICtAh29P2AGe25RJkPcW5eRU9U1GjhQN9YNujxstMAp84N82ntXyoJbofV89iLnu5x8mqPInTKIe5s
 dhJm3TxD40CK9dR6zGMKtxq2xgmnEh6hgHJbPm7gCasQqP3NtHvPEm4F/LUSWu4HZRWf+T5JO4FJSJv3J3UMPyI5pfQCzGMMnF9l8iDPft7YfKA44MdMMoOD
 ngD6uX/kQeuokaHt1T5s94F6agR57Yz9aaQ6l3mFYy5CpL3vc2koXy87GpTr9P/pw7/qHzYClX7LwDdy3Aq5Ep8Xd2FV1LXid5IXtcxtjsNyBwhcZ1BzBKPZ
 k/i2AcVIpuohFBqaynIhfE2uXdxVyxErgCo4lQ==

Hi Mitali,

Something to improve:

On 08/04/2021 23:21, Mitali Borkar wrote:
> Reduced length of a line which exceed the 100 columns limit by splitting
> the line into two statements and commenting it with '*'
> Reported by checkpatch.
> 
> Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> ---
>  drivers/staging/media/zoran/zr36060.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/zoran/zr36060.c b/drivers/staging/media/zoran/zr36060.c
> index 4f9eb9ff2c42..035634fc1c6d 100644
> --- a/drivers/staging/media/zoran/zr36060.c
> +++ b/drivers/staging/media/zoran/zr36060.c
> @@ -249,7 +249,9 @@ static const char zr36060_ta[8] = { 0, 1, 1, 0, 0, 0, 0, 0 };	//table idx's AC
>  static const char zr36060_decimation_h[8] = { 2, 1, 1, 0, 0, 0, 0, 0 };
>  static const char zr36060_decimation_v[8] = { 1, 1, 1, 0, 0, 0, 0, 0 };
>  
> -/* SOF (start of frame) segment depends on width, height and sampling ratio of each color component */
> +/* SOF (start of frame) segment depends on width,
> + * height and sampling ratio of each color component
> + */

See the coding style guidelines: the preferred style for long comments is:

/*
 * text
 * text
 */

Regards,

	Hans

>  static int zr36060_set_sof(struct zr36060 *ptr)
>  {
>  	char sof_data[34];	// max. size of register set
> 


