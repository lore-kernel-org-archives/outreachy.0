X-GM-THRID: 6618908371010453504
X-Received: by 2002:adf:fa82:: with SMTP id h2-v6mr857574wrr.18.1542109693087;
        Tue, 13 Nov 2018 03:48:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:b186:: with SMTP id a128-v6ls2260235wmf.13.canary-gmail;
 Tue, 13 Nov 2018 03:48:12 -0800 (PST)
X-Google-Smtp-Source: AJdET5ccWQM7R3PiziGpCWSSyI4tcXah4OyWm/slPlVCYsQ4iGqRZhHbVdoUMVQQOn8eBpB4e1Xd
X-Received: by 2002:a1c:1582:: with SMTP id 124-v6mr595294wmv.13.1542109692221;
        Tue, 13 Nov 2018 03:48:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1542109692; cv=none;
        d=google.com; s=arc-20160816;
        b=PQuVJTffhqtZ3AGjy89I/6VBSVRkVzGLH0+qWImDoWY6PIcbTn/U7oEyQyppYOCAr2
         25V21hJbhL5xDGKbX3/YvP4VeehFAa3cblMjV02T7HhpJ/sP54oWxN/ED/zcOzF6Pvp+
         WXnFHQgKzf84fPxsHhGvOz2givbhRmcgDFvWoGTekTx8ty9dgDhTAIpii2M5BWesi+d6
         kuz4V7YfpK4lUIolMWun+n6U33f1Vkn2If1sZoem2XqJJcHQniXxl9kbm31mbs/DS5rC
         Rq23to+g8U4lMQj5NvabM32DfFAF2DbOSc5yuAcc5dTisPoX6P+oK6nOFdpOkrUmKPoE
         0Lmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=iPuwOV7d6ri2GI/7W1a24ufNfPhHu2J0QUZB1rqxsQo=;
        b=wyG+ugVvO72Kov1V7Y0yMwufjIcvTU8LLK0MTa3Szb8TPSVb671rWMtfyI5NON9MK8
         Zz/E6wr70fogrdsbxaW9HFgEngU5pw8JmnUqcGR43pjQtv1dXnKKdFfnPBLk+Txx5Qps
         h0oeiAN+DbxzXloewgNRTSZ5jfMPtaLMKMk4T8koM/fV5wh/JSzCF503wqHpvdE8+goI
         H4MlcdB3+mkf6V42RSZ20dpC7LJ9Hmj57la1mbmZA6gzUMSD8RvqMyU2keIrJ9fYX9Ii
         onbaQGhcTRSKa7UCCLQ2gctG5YVcJH+eFvTvW34LO3VwLq6VhKDJveP2noCIWJMTjeAE
         EiHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.28 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb2-smtp-cloud7.xs4all.net (lb2-smtp-cloud7.xs4all.net. [194.109.24.28])
        by gmr-mx.google.com with ESMTPS id u13-v6si655200wrn.3.2018.11.13.03.48.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Nov 2018 03:48:12 -0800 (PST)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.28 as permitted sender) client-ip=194.109.24.28;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.28 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from [IPv6:2001:420:44c1:2579:cc8b:c08b:b11b:69b9] ([IPv6:2001:420:44c1:2579:cc8b:c08b:b11b:69b9])
	by smtp-cloud7.xs4all.net with ESMTPA
	id MXAtgpUmERKKoMXAxgIE6X; Tue, 13 Nov 2018 12:48:12 +0100
Subject: Re: [PATCH vicodec v4 0/3] Add support to more pixel formats in
 vicodec
To: Dafna Hirschfeld <dafna3@gmail.com>, helen.koike@collabora.com,
 mchehab@kernel.org
Cc: outreachy-kernel@googlegroups.com
References: <cover.1541451484.git.dafna3@gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <5243e781-280d-791f-4e2f-db39778217df@xs4all.nl>
Date: Tue, 13 Nov 2018 12:48:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <cover.1541451484.git.dafna3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4wfFvUBye81J0mfjwrgCJkgaDsNXEHqd23MAkJpJww+rkYnMITf2WXXFGjMNPEuElyNNpnGjmDq507s8Asy5qe/RFqGdGBwtV7ItfOJoYIx3n7Aw5zn/HX
 fUnFGxy6mjFv+64Dbc5Ns16t7SVX9F+cRLSVd+NUrb9l7hGEPLwfP8ejXisAkPjDHMW2AVhMX4UwnJr6tyljBTrUJMlrsolZT/uo624br3z83uzD3w39OR6/
 /gzbpO8d+HUMhpS43lN5DzhHsdDuuhZ8lNBATICL7kts6awEnGhJPURIZ1H3wTXJKrohju4QoArZeZH0w2bMOLA5Y5J7NjXK45DrQpxoougDP5FUG8cLVrDG
 twurXlEmnZIXsL6cH0g2ETcllYqJx0ql3nkyryAW1n5/iNPTaiw=

Hi Dafna,

This patch series looks very nice!

Can you repost this and add a CC to linux-media?

I'm happy to take this.

The TODO that is in the decoder code (what to do if the fwht bitstream
encodes fewer/more planes than the requested raw frame format) is
something that needs to be implemented later as part of making vicodec
compliant to the stateful codec specification.

Regards,

	Hans

On 11/05/18 22:14, Dafna Hirschfeld wrote:
> The new supported formats are
> V4L2_PIX_FMT_GREY, V4L2_PIX_FMT_ARGB32, V4L2_PIX_FMT_ABGR32.
> 
> The returned encoded format is chaned to support various numbers
> of planes instead of assuming 3 planes.
> 
> The first patch adds new fields to structs.
> The second patch adds support for V4L2_PIX_FMT_GREY.
> The third patch adds support for V4L2_PIX_FMT_ARGB32, V4L2_PIX_FMT_ABGR32.
> 
> Changes from v3:
> 
> patch 1,3: - no change
> 
> patch 2:
> - replace the 2-bit flag FWHT_FL_COMPONENTS_NUM_BIT[01] with GENMASK
> - add TODO comment - handle the case where the encoded stream is different format
> than the decoded
> - allocate maximal space for the V4L2_PIX_FMT_FWHT format
> 
> with the test 'flags & FWHT_FL_COMPONENTS_NUM_BIT[01]'
> 
> Dafna Hirschfeld (3):
>   media: vicodec: prepare support for various number of planes
>   media: vicodec: Add support of greyscale format
>   media: vicodec: Add support for 4 planes formats
> 
>  drivers/media/platform/vicodec/codec-fwht.c   |  73 +++++++----
>  drivers/media/platform/vicodec/codec-fwht.h   |  15 ++-
>  .../media/platform/vicodec/codec-v4l2-fwht.c  | 123 +++++++++++++-----
>  .../media/platform/vicodec/codec-v4l2-fwht.h  |   3 +-
>  drivers/media/platform/vicodec/vicodec-core.c |  35 ++++-
>  5 files changed, 182 insertions(+), 67 deletions(-)
> 


