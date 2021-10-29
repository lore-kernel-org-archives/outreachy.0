X-GM-THRID: 7024064041486123008
X-Received: by 2002:aa7:888d:0:b0:46b:72b2:5d61 with SMTP id z13-20020aa7888d000000b0046b72b25d61mr11521656pfe.73.1635522090659;
        Fri, 29 Oct 2021 08:41:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:9341:: with SMTP id g1ls4307752plp.6.gmail; Fri, 29
 Oct 2021 08:41:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyvLJcZ9I7x6z4GA1nHJMB+a3cikSpPv20kUZ0VZ6yUrPVchFp+/YtmBaOiUmw/pYVYFu1H
X-Received: by 2002:a17:90a:62c1:: with SMTP id k1mr4303322pjs.33.1635522089512;
        Fri, 29 Oct 2021 08:41:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635522089; cv=none;
        d=google.com; s=arc-20160816;
        b=AwG/lbMF4rRndPWF8T/b5iquGFDw9oBTmuv+gRQntZhgsB7b956J4rbgR8psXNzcXG
         TEGTfzEN5naJcrcFMoh8l4KAB3c9268Kg8PIaznGf/+ylrxGOzOUdMFINHLQuNIBhj55
         SaHX0W/aoZ96xrC8EFO8AtAgZHVcg5XdvARaQ9vg0mrw6Vq3sc4kzWR2J4WTx2W7IwIb
         s9UM44cvlDGUA/DmTUNrsFT2Hy/Xu5AVkeORVL03CTlF/6qWd281d/y+Zy43KuJLbovG
         TVTgIF5JjSBlzzor25soCxNYnw14v7D76OwMlpjkK3Jvee0Fqf4GCQYL62t7qSip/a/E
         kTkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=e2LSeR+1aB83iQx8bvm+vqfIRk8zSNNwY57NGmv6bj4=;
        b=WsAAVyKqprDZqFNIeH77Z2JfhIvDvnsna2G2Qtjvf2B8z4889dl88bM+Hhrs0CuLIc
         yuwmlv2E5mLiWP/osMCikOJABI++uXSXgusw1X3SbFEdVC5hJ3HOlBSBZWjT/aQkN+Yd
         Nwgo18GomVRcz+Gw0AL8jAQgvF0iaF2dZWUeczPHuGrBNPEwbRvz7P4LOVwgMkf5Ixd6
         UqwRmH/clBjMtknFaktLR2/qdhM2jfMGf5ZfcPrRsnVUo68nhMz896gWVwvM+8wgMoft
         g5LZNjToEBdbhU0ULZ2t0mRwtHb5O9i/c4JVVNQayK38WBls1dH6zLseYpXBxHafpEGb
         OhLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ZaOh3z6F;
       spf=pass (google.com: domain of kpraveen.lkml@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=kpraveen.lkml@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kpraveen.lkml@gmail.com>
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com. [2607:f8b0:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id p1si664583pfo.1.2021.10.29.08.41.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Oct 2021 08:41:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of kpraveen.lkml@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) client-ip=2607:f8b0:4864:20::42b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ZaOh3z6F;
       spf=pass (google.com: domain of kpraveen.lkml@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=kpraveen.lkml@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42b.google.com with SMTP id 127so9630180pfu.1
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Oct 2021 08:41:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:in-reply-to:content-transfer-encoding;
        bh=e2LSeR+1aB83iQx8bvm+vqfIRk8zSNNwY57NGmv6bj4=;
        b=ZaOh3z6FebFptV8F7W7jaNXgILOtsJzduEsWYpjfhjJKFG4vPWG9kIC1Chz8XuE/eo
         cUjkreDzjc3xmkJ7TPNV0o+DHj465FnLBhhWTBcBjFGzS8/WfKXWGRVwFVTVtNlc316b
         XpYqihOXOKJOD/DfxtTuS3GWkc5IUkWGh5zbs106vpcVZS05nYDU+m70jImdMsdpDFJJ
         Q+nk+yoChsE9p0nz98Y4bGuM/RpZ4qh5XwB1qWVzQ/OzVbXyVVSEOUuEmMGiLlY1PBVN
         o3V2l4kHgv2ZkPWc4UgU0LGcE0WGqY9Zcg62S1CCY/iDTqnLxgGIyO9R4YTN7A98ey3G
         3+Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to
         :content-transfer-encoding;
        bh=e2LSeR+1aB83iQx8bvm+vqfIRk8zSNNwY57NGmv6bj4=;
        b=XlvVEzzNlq9oS5aLJZO0vBsoM429Ud5kldx2rwdGlZBlvHlQqyzpP5Ezv7LgM9E4YO
         hJu0CTEaH4Kw8Kaf1VukbQ8roMt3ZsjEAG5fK7iDPOvRrPMtPIXYzYwIbUAFdoYaML44
         BBC6rTaASv4HU1o7e3icfpbEHLKGXYCGIh/ZU7Ijv2rFZVaFit1+wAVfWx08dbIZD1Me
         dgaaMJTdNgI94Ljs/5ff5TQxJT6oQzFi1Z8Jx7pQeqw7D+ATtTlbrTsHLeu8Bsjz/CXX
         Acdaz3uQjqwHDu1OZFLmLWl6BTf383SjmxKQ5npWeUDwo6gRXnHLt95br7XNBd8Oczh7
         q3cQ==
X-Gm-Message-State: AOAM530XjeCHEIShyv0INwIml9haJDwZIjvHcLVI/DcNIAW336x4z6cr
	NjgHo9XUrdr8SMZAEc1Jqtu/2BdxeE4=
X-Received: by 2002:a05:6a00:b46:b0:47b:f401:d76a with SMTP id p6-20020a056a000b4600b0047bf401d76amr11458363pfo.47.1635522089276;
        Fri, 29 Oct 2021 08:41:29 -0700 (PDT)
Return-Path: <kpraveen.lkml@gmail.com>
Received: from ?IPV6:2405:201:d007:e827:3d78:7315:8c23:fdaf? ([2405:201:d007:e827:3d78:7315:8c23:fdaf])
        by smtp.gmail.com with ESMTPSA id t22sm7622252pfg.63.2021.10.29.08.41.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Oct 2021 08:41:29 -0700 (PDT)
Message-ID: <edfd74c7-9b6d-f8f5-65c4-c1bae3015247@gmail.com>
Date: Fri, 29 Oct 2021 21:11:25 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [Outreachy kernel] [PATCH 2/7] staging: vt6655: Use
 incrementation in `idx`
Content-Language: en-US
From: Praveen Kumar <kpraveen.lkml@gmail.com>
To: Karolina Drobnik <karolinadrobnik@gmail.com>,
 outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, forest@alittletooquiet.net,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
References: <cover.1635415820.git.karolinadrobnik@gmail.com>
 <c569952d92ba51f32679c2fd87fd48ad8e49e3fc.1635415820.git.karolinadrobnik@gmail.com>
 <3dfc45e5-12bc-72da-a260-5551a483fe6e@gmail.com>
In-Reply-To: <3dfc45e5-12bc-72da-a260-5551a483fe6e@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 29-10-2021 20:26, Praveen Kumar wrote:
> On 28-10-2021 16:05, Karolina Drobnik wrote:
>> Increment `idx` in a loop instead of adding the loop counter
>> `i` to do so. Thanks to this change, the cast to unsigned short
>> can be removed.
> 
>>
>> Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
>> ---
>>  drivers/staging/vt6655/rf.c | 16 ++++++++--------
>>  1 file changed, 8 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
>> index f195dafb6e63..c07653566d17 100644
>> --- a/drivers/staging/vt6655/rf.c
>> +++ b/drivers/staging/vt6655/rf.c
>> @@ -700,11 +700,11 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
>>  			return false;
>>  
>>  		for (i = 0; i < CB_AL2230_INIT_SEQ; i++)
>> -			MACvSetMISCFifo(priv, (unsigned short)(idx + i), al2230_init_table[i]);
>> +			MACvSetMISCFifo(priv, idx++, al2230_init_table[i]);
>>  
>> -		MACvSetMISCFifo(priv, (unsigned short)(idx + i), al2230_channel_table0[channel - 1]);
>> +		MACvSetMISCFifo(priv, idx++, al2230_channel_table0[channel - 1]);
>>  		i++;
>> -		MACvSetMISCFifo(priv, (unsigned short)(idx + i), al2230_channel_table1[channel - 1]);
>> +		MACvSetMISCFifo(priv, idx++, al2230_channel_table1[channel - 1]);
>>  		break;
>>  
>>  		/* Need to check, PLLON need to be low for channel setting */
>> @@ -717,17 +717,17 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
>>  
>>  		if (channel <= CB_MAX_CHANNEL_24G) {
>>  			for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
>> -				MACvSetMISCFifo(priv, (unsigned short)(idx + i), al7230_init_table[i]);
>> +				MACvSetMISCFifo(priv, idx++, al7230_init_table[i]);
> 
> If I'm not wrong, there is a problem here, we are using the modified idx value here, instead of original which is *MISCFIFO_SYNDATA_IDX*.
> I don't see idx value being reset either. Am I missing something ?
> 

Looks like I missed, the case statement, thus, idx will be intact. Please ignore my previous comment.

However, as mentioned in previous patch, we can also make *i* as unsigned short and that should IMO remove the requirement of cast.
But again, this works as well. I'm fine with either. Thanks and sorry for the confusion.

> Further, this bring a question, how are you validating or planning to validate these changes ?
> 
>>  		} else {
>>  			for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
>> -				MACvSetMISCFifo(priv, (unsigned short)(idx + i), al7230_init_table_a_mode[i]);
>> +				MACvSetMISCFifo(priv, idx++, al7230_init_table_a_mode[i]);
>>  		}
>>  
>> -		MACvSetMISCFifo(priv, (unsigned short)(idx + i), al7230_channel_table0[channel - 1]);
>> +		MACvSetMISCFifo(priv, idx++, al7230_channel_table0[channel - 1]);
>>  		i++;
>> -		MACvSetMISCFifo(priv, (unsigned short)(idx + i), al7230_channel_table1[channel - 1]);
>> +		MACvSetMISCFifo(priv, idx++, al7230_channel_table1[channel - 1]);
>>  		i++;
>> -		MACvSetMISCFifo(priv, (unsigned short)(idx + i), al7230_channel_table2[channel - 1]);
>> +		MACvSetMISCFifo(priv, idx++, al7230_channel_table2[channel - 1]);
>>  		break;
>>  
>>  	case RF_NOTHING:
>>

Regards,

~Praveen.

