X-GM-THRID: 6609326471053836288
X-Received: by 2002:ac8:23f5:: with SMTP id r50-v6mr14339955qtr.53.1538902302684;
        Sun, 07 Oct 2018 01:51:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:2cac:: with SMTP id 41-v6ls2293965qtw.2.gmail; Sun, 07
 Oct 2018 01:51:42 -0700 (PDT)
X-Received: by 2002:ac8:2d0e:: with SMTP id n14-v6mr14275124qta.47.1538902302274;
        Sun, 07 Oct 2018 01:51:42 -0700 (PDT)
Received: by 2002:a37:d685:0:0:0:0:0 with SMTP id p5-v6msqkl;
        Sun, 7 Oct 2018 01:27:27 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62bjK3JkzZVEGS0f7RMKQxk2jodVxqydMplQYyjS+r1Y/qevevcZ1M48Asr0xGaLVvmF2Gv
X-Received: by 2002:a2e:8882:: with SMTP id k2-v6mr525020lji.36.1538900847467;
        Sun, 07 Oct 2018 01:27:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538900847; cv=none;
        d=google.com; s=arc-20160816;
        b=CZjpcysm2bt1i9dBTQ1q0uYs9AdJMP7l7rNJRrqbnyeg1qAZ2zMpb/Anpt5v8O+iyi
         68MrXQ04ZUNXbLzSVIz7Wx3QYULfYfyusvqP5EnQmVUYSjf8U2uoNhSK40DJRjvrQjn3
         5N82sF/9ARBiTgL30G1l7l7ePTBF/0jqNUIIHokVLoKEuGkt64b99VZRCwSFauTO5O+R
         zsr40sbyLrjJyrbFSpFS4rPYakaKU1RfXJD1PI+UQGSg+HyxEzzAzJhPqJEotedRPRP3
         eWSug74Ub0A43Qsvp6mWGaz5Y9N1B5d3vZWkukrVHnjOQFO5H+JdtXOffrmpB+r5rNe2
         CtQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=fA34gRTwFmPv1uikSGvneREtNvwqm+lglO2osR5O68M=;
        b=pikLGs/+47IS9fmjOlwRCzz2k9xXw9urI7ClFjgLGes0Q46QVEeI0mqHxvMIkAVZRm
         lFz3XrKNay9ehnbHuFCPNRavP/8gQ8MY99QeWjEXB3X7o9PHgEE+YNnVzFpyTudAl7Bw
         QZrKTToV+RyDCydI8PBnJa420SR2PsCp4LTEryTyNb10LoRvkRJ9dMAbsHnGwBORIR6V
         GWugxw5qFDtDCKYQJB33DkBR8RWgjnq1cNpK1IrDB67Z5eziXXRRoh7VuRIrx+hmSBRj
         4CFGmKrx4JWlIX0t7sipLqH81pXX69OeRBQx94feNw86c5WbOz3qj2wyYkpQIzYClP0Y
         4Cwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.25 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb2-smtp-cloud8.xs4all.net (lb2-smtp-cloud8.xs4all.net. [194.109.24.25])
        by gmr-mx.google.com with ESMTPS id y1-v6si463804lfd.3.2018.10.07.01.27.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Oct 2018 01:27:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.25 as permitted sender) client-ip=194.109.24.25;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.25 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from [192.168.2.10] ([212.251.195.8])
	by smtp-cloud8.xs4all.net with ESMTPA
	id 94PKgayF70ZZE94POgyZT6; Sun, 07 Oct 2018 10:27:26 +0200
Subject: Re: [Outreachy kernel] [PATCH vicodec] media: pvrusb2: replace
 `printk` with `pr_*`
To: Sasha Levin <sashal@kernel.org>, Dafna Hirschfeld <dafna3@gmail.com>
Cc: isely@pobox.com, mchehab@kernel.org, helen.koike@collabora.com,
 outreachy-kernel@googlegroups.com,
 Linux Media Mailing List <linux-media@vger.kernel.org>
References: <20181006192138.11349-1-dafna3@gmail.com>
 <20181006230359.GB32006@sasha-vm>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <bdf81e02-cec3-501e-4cb9-0c2f2b0f12da@xs4all.nl>
Date: Sun, 7 Oct 2018 10:27:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20181006230359.GB32006@sasha-vm>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4wfP1l0jq9NFB/n538Y8ffs9/xd0oWJqcRoI9H/NRoI8qbB+iuZFlHppierINWumtvRgug/npF8iqK4WgTfCpiHxpUtwmu76emIcrCFknyKAKobBD6agP5
 U8+U0eEE/Ores70i8jXdtgVMcA0AOKvuyiqyi+ybzgJ6u42MHpZAn5OrPKaMjJYPwbmYU3A2UOnFcxIJb7VHO/P8E8hmhT1ZMf0RG4sOG+HijZ+J6pARa8/m
 ahQgqgNbqnsVuD+WV+79qnj3ymb8mw3azO3E7QnBzCHRdnz9bqWeJGgKTiBUpjUaG21bgLV8OdPrv6DtD1eDABmvYnnKUv2nlhNkR1Ew9JaDbo86bvKq8BZ/
 8QjXB1EIVLkQS1mcIOqMy9NZzF7qiQ==

On 10/07/2018 01:03 AM, Sasha Levin wrote:
> On Sat, Oct 06, 2018 at 10:21:38PM +0300, Dafna Hirschfeld wrote:
>> Replace calls to `printk` with the appropriate `pr_*`
>> macro.
> 
> Hi Dafna,
> 
> I'd encourage you to look into the dev_ family of print functions (such
> as dev_info() ). They can avoid having to repeat the driver name in
> every print call.

Not for this driver. The hdw->name is the right prefix to use and the code
already uses it.

For almost any other media driver Sasha would be right, just not this one
due to historical reasons.

Regards,

	Hans

