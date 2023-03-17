Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F43462D
	for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 04:22:03 +0000 (UTC)
Received: by mail-il1-f175.google.com with SMTP id r4so2189039ila.2
        for <outreachy@lists.linux.dev>; Thu, 16 Mar 2023 21:22:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679026922;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Pmd5lQwzwtPIpazZIvp5VbuOsdlAcm4+QEwBTZjm24M=;
        b=RDfjoz704lgiwm4sz2Ho+dZ5Z1zWrVS64iw/MF7p7Fghu/9D8gnf/HvnXJno9iq36v
         qOpWFeo8EWxr4EuDLdA8OgRItmGG2RhGAECEj5qLGGcXumvK3Y1CaGq589aneaJY173b
         CHr4bZjyDzs2XiFBpM0jxicFtu8hP9/Q6LCro17t0dm415ZxXZ59MxJiQZmRKcGr5m7c
         9iRcmK7w1RKvJCbyYBCQ4vF08VtUoq1D0bNqcCNgeyD/YCwyGBXsrPdBPLjdsWnoQL0q
         +/MF4aDtoyIcyRTFgPbEmAtMvK1ifvdhnr8UlfP8fVuSbiiTaQLgwbDa+LxGoudlRjHP
         W1fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679026922;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Pmd5lQwzwtPIpazZIvp5VbuOsdlAcm4+QEwBTZjm24M=;
        b=zDIqylVZfkg7VpzGXSx5Mj+XkZjvkdEIEYwUZxQVVK+LloDcEkUrGFcIChw5/YeUBg
         pgRd1aeZ110XlSd0iQOwUNsWlsK8srNt8l4Abjxd0EA8HTB1xX+hs6EvqKmKRfPaNP/W
         j9ATfLmNHgThODIIofU8YiGNqUC+KdwPT/h+Ih03ErvhrZQ1lHZCvkAgWhoSjGOMPbZ4
         0vsvIO+RMRFmT1K7ac9VyiZLf1wTDNERNWj2e4kE2b0kjEmrpzotvYo5pYNFvBYtATPh
         nkiV8eSm8IFULBS3URoiHPqv+NRdJLNMU0/gRgw0z/Trzyg85qKrSO31ANmDcQ/cLVXL
         DEuA==
X-Gm-Message-State: AO0yUKW3rHiceB9G1O5oWR34MTbUSfDtIlA89rObpBPML+eQUDj/YATt
	4sGJNIfC9wPJ5e0uBErDta/ApHPcC7i+Cg==
X-Google-Smtp-Source: AK7set/DRr4Biq6icOmhGzAlUOw984EEigfS6btQVY6NUeAVZuCxd3kVv1OKkrAXaN/IbUdiYT6SBQ==
X-Received: by 2002:a92:4b12:0:b0:323:cab8:3c12 with SMTP id m18-20020a924b12000000b00323cab83c12mr5191839ilg.25.1679026921703;
        Thu, 16 Mar 2023 21:22:01 -0700 (PDT)
Received: from pikachu-Z97-D3H ([76.76.64.93])
        by smtp.gmail.com with ESMTPSA id a2-20020a029402000000b0040637924a30sm359993jai.31.2023.03.16.21.22.01
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Mar 2023 21:22:01 -0700 (PDT)
Date: Thu, 16 Mar 2023 22:21:59 -0600
From: Mark Heim <questioneight@gmail.com>
To: outreachy@lists.linux.dev
Subject: a bit more trouble
Message-ID: <20230317042159.GA423927@pikachu-Z97-D3H>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The original task I was working on is the prism2fw.c file

kernels/staging/drivers/staging/wlan-ng

The above C code is not compiled using the makefile
and I do not know how to build it successfully. It
seems at least part of the problem is due to
include macros not being able to find the right header.

This above task looked too difficult for me as a patch
for now. The README mentions that this code
is perhaps not ready for public use.

I am now looking at this directory

kernels/staging/drivers/staging/greybus

and more specifically at the top TODO
item in audio_gb.c. The main Linux build does
compile this C code to an object but the
makefile will not generate an object. It appears
to be another PATH variable issue.

I tried to use gcc on audio_gb.c. It gives
an include macro error.

I tried to use the makefile in the relevant
directory to generate the object but there
is a similar macro error.

Part of the issue with getting audio_gb.c
to compile is missing headers. I have done something like
this:

gcc audio_gb.c -I/path/one -I/path/two -I/path/three

and so forth. Several warnings and errors
appear with this approach. One of them that is
repated over and over is atomic64, and
I tried to use the below line to identify where it had
been defined, but it gave me what I think is
the wrong answer.

grep -nr atomic64_t ~ | grep -v Binary | grep typedef

Please let me know if you have suggestions on
what I could try next.

Thank you,

Mark


