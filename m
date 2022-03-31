Received: from mail-oa1-f65.google.com (mail-oa1-f65.google.com [209.85.160.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7387D7F6
	for <outreachy@lists.linux.dev>; Thu, 31 Mar 2022 09:51:11 +0000 (UTC)
Received: by mail-oa1-f65.google.com with SMTP id 586e51a60fabf-d6ca46da48so24757720fac.12
        for <outreachy@lists.linux.dev>; Thu, 31 Mar 2022 02:51:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=d358jU8RLOnYZm1LBzpQ/EZ/+i3KAwMbejRWXr4vsrY=;
        b=f9eoTlpkJbnXdjGs10tOhM3ZH9yDP6gXNHyEIGx5ffIK2dZpYV59UzF0QD8+qCJlwv
         Hz7fUizPPTy+25WAGw8iyIz5yGGrlYKwp75UD6Srq27V/1wavrlxulyHAHVQ6J0U148V
         TBg4VfUt6HlHotHpdkJ58AL4WWM9+G3etmtBQB4slOpnnzrc9z61jGPk57Eaa69L7ape
         ceNNBS2oZ6Yjc+lnZSNudvR6df4CIoErMS6Knxt37mhSFRXCsDNL+USj4DOe/jVyKBRt
         JfO6bPEgBNxt9DE2qaFlahmt4lfbn2bgbOAUfIWHcoiHshsyfl6dooJsopM8QK/pvCGw
         3eww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=d358jU8RLOnYZm1LBzpQ/EZ/+i3KAwMbejRWXr4vsrY=;
        b=KYBUFF3Ee66bpx8C8+fv3TWETEZAWKay4Y2NnoIgvntjJJMUu7CAxogITHSl8Bw/YU
         XCTizeXX0a6mXAcRTzfYdkw7qbiWQEYrvfPlgmHHWpDoFVqR5GLOv++4JOZfUBwfmtcb
         D9hRIMOM5+fdiwpu7nD3jTKp53Gu+p1ODj07ZNUXvrez8YmfeV443/2E8Y+cWecZW7Bd
         HPRJhWFgTCZOsKYWtvPxaIX9S2GSHmsfwi6sVecYe32KPntblHzSRHQ4JVFeLgBTkWY8
         Tug2xgrHvisSGH1SqxGG/vyQMpb3ur6/LDxmKSF8kgrvbfuEIntVEjl/YTzg3MU0kDN2
         6UrA==
X-Gm-Message-State: AOAM5338Pv/kxWST7h7z9MPbpcMrF61Jii3DhnpI3656FXZOrvyA5RIF
	cTqr87MATJCns8aUZH0AbRPGQ9Erazau7w==
X-Google-Smtp-Source: ABdhPJwrV5nYBTPKNPvOYG4+sWK70UlQnMPMcnQVHaJAJE+1zxQ+qlS6hhDVDnsMmip28KL+vEtYEQ==
X-Received: by 2002:a05:6870:58a4:b0:de:6122:278f with SMTP id be36-20020a05687058a400b000de6122278fmr2154336oab.65.1648720270240;
        Thu, 31 Mar 2022 02:51:10 -0700 (PDT)
Received: from bertie (072-190-140-117.res.spectrum.com. [72.190.140.117])
        by smtp.gmail.com with ESMTPSA id k30-20020a056870819e00b000e18ee342c0sm1714173oae.18.2022.03.31.02.51.09
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Mar 2022 02:51:09 -0700 (PDT)
Date: Thu, 31 Mar 2022 04:51:08 -0500
From: Rebecca Mckeever <remckee0@gmail.com>
To: outreachy@lists.linux.dev
Subject: Completing TODO items
Message-ID: <YkV5jFwoFMXKyxaO@bertie>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

If we submit a patch that completely addresses an item in a TODO file,
should we remove the item from the TODO file as part of the patch?
