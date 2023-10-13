Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237A6101E2
	for <outreachy@lists.linux.dev>; Fri, 13 Oct 2023 06:32:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mtD9trGo"
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-40537481094so18984685e9.0
        for <outreachy@lists.linux.dev>; Thu, 12 Oct 2023 23:32:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697178763; x=1697783563; darn=lists.linux.dev;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E5USrtZ/jHxJgG7+QsbXSjxBR6f05DwCAz0saZBDnpQ=;
        b=mtD9trGoYDEm1BH0korJ7v+Ugv8nSzbWlyPePFcKkt4nrpmvmN9agG1nt0PA2jlPnh
         Z4xeoGhtW6M33IrHHYSB/9LZy7K2og54TBoQiqr0CXJ0peehu+5FZySHBojxGxCPCHLd
         lzBr8ktWwkmjQvy166Knz5e269rmcDIKDr52ODqOVsEEOBuuaIDWTVlFg05K60qEAWv8
         ESwu3/scmicgyNIpJAYr0XYr4H1GODF212oh+YMIge7xY/tu/nNG4mT4KXDPLxZ0efqF
         axYs1X4g2+iByLAie/bQs6Ds6w98QmKsnonObIPJMYWvambQyE6Q2eZEBmGkeYTB1N0Q
         3XSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697178763; x=1697783563;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E5USrtZ/jHxJgG7+QsbXSjxBR6f05DwCAz0saZBDnpQ=;
        b=IfJ2wf9PyNL+lmJCPc+X1FiVH5Y2/8sseBGAW5natsztiR4+n5RVxQnXqJ7+S4PAga
         9DPw2ehotPNxiC/hvSqPNPcRysrbjYHvo9xvhGi2ARfRPUxiLtoG5fp5Mnb4FX2YBDj2
         KZJm/qkEKXkPLaCZ5owMKUMekZ6N1IwOSSiDe+/SRzMMNIIdcF8OxfzZcSjaBa6l+x3R
         iZeK9sgrO9QvdVOea30DMMd1kY8zWgzl16Ai3Wl3lvk9VNZM0mF014f1nd7/dMtTEmzl
         CCxtfizCYq9ZLdqkR1IuXpZlI//K/s3Pc7MC3+O7cQ/Si+3DYXBs2H0ZGGuIlkJQRcGz
         hoIg==
X-Gm-Message-State: AOJu0YxciHJ2+xS6gXC0SwnhnKZuYWeMrWcSHtwT4l9VprM+01zWNEUr
	Q+h0MKM2kcAM6j5FEDaOesLaMTuZti44
X-Google-Smtp-Source: AGHT+IEgTQWRY2xSOQskeCOyZ4m3nPDK2tfX05jEYUQQvcEitD1nKtmNe1/9eEz8+0kwPOI2fXToYg==
X-Received: by 2002:adf:9bc8:0:b0:32d:850d:f9b1 with SMTP id e8-20020adf9bc8000000b0032d850df9b1mr5624053wrc.22.1697178762946;
        Thu, 12 Oct 2023 23:32:42 -0700 (PDT)
Received: from dorcaslitunya-virtual-machine ([105.163.2.146])
        by smtp.gmail.com with ESMTPSA id dj16-20020a0560000b1000b003198a9d758dsm3052896wrb.78.2023.10.12.23.32.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Oct 2023 23:32:42 -0700 (PDT)
Date: Fri, 13 Oct 2023 09:32:39 +0300
From: Dorcas Litunya <anonolitunya@gmail.com>
To: julia.lawall@inria.fr
Cc: outreachy@lists.linux.dev
Subject: [Outreachy]Clarification on code section in qlge driver
Message-ID: <ZSjkhx+xWP9xXiAt@dorcaslitunya-virtual-machine>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Julia,

I am trying to edit the above macro to incorporate an inline function as
macros with control flows are highly discouraged. However, I wanted to
inquire about some parameters in the FILL_SEG  macro below so that I can be able effectively
create a well parameterized function.

#42: FILE: drivers/staging/qlge/qlge_devlink.c:42:
+#define FILL_SEG(seg_hdr, seg_regs)                                        \
+       do {                                                                \
+               err = qlge_fill_seg_(fmsg, &dump->seg_hdr, dump->seg_regs); \
+               if (err) {                                                  \
+                       kvfree(dump);                                       \
+                       return err;                                         \
+               }                                                           \
+       } while (0)



The fmsg parameter and the dump parameter, both
in the qlge_fill_seg_() function inside the macro, where are they referenced from?
Looking through the code, I cannot see global variables in relation to
this. Are they command line arguments or does is thekernel set to
provide them?

Any assistance will be appreciated.

Kind regards,
Dorcas

