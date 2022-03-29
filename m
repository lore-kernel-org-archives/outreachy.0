Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A87EF33C2
	for <outreachy@lists.linux.dev>; Tue, 29 Mar 2022 23:50:26 +0000 (UTC)
Received: by mail-qt1-f170.google.com with SMTP id c4so16757609qtx.1
        for <outreachy@lists.linux.dev>; Tue, 29 Mar 2022 16:50:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=H6u8m72kSe0CHoONuYUHp0egMQi8RBTeNrgXqnh8EBA=;
        b=DNAnl6YHfrypnC2BtyX30qsLoz2pCoQzXZmmczp586Q6uHU0qUO9VMkSfLApsswPX2
         nMHwmwOynqtnShXivWqnSysleCc6xisCtxBrOP2zwmApqBSUWwuuHQQzwE+fUyzh5Umx
         bHV4WPOwBc45NcXgViKYkUrS9iCfxFg9WUOmF4VO+6FKQX0e4Mz86Jnqo74yuSOAFyju
         qxxUKEh8fPhc4qHXzzaWMghXJcF9mjSk5+3bRnWFlQ4RRdiqRQ3B6oPPw5bmwofRNEvE
         icPjLO1D8UVvRkDGhoQYBydu2cYOHDeY2OIpZ3gpsH6ewFvBN8kIHIYgQzIsfuQJa4MN
         ZpVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=H6u8m72kSe0CHoONuYUHp0egMQi8RBTeNrgXqnh8EBA=;
        b=g+63HlOVyCcxG8Pl2I0VXEBa243YBw9TH4FwnWIHACpbW0XvKvSBkKDpvC6PQ6/qxy
         qrNvBXdLNt53UsCed/LQWtu/MJmrTq1/xpYkdRaddb+x53x1GqD/sC0rZ70ZTIZb1eiN
         PGGuwn9zU2WiI0/TC0xX84FTrGb7mDIQ0U5prILyNy+4X0SlROjLU5S7QUENn/4u1wPr
         BlPWUvz3TG/8VBsaibI5Ja/oeCLgH6+DMuZySwG9TMceOsymWpfMX0rnzGv2vgXwFI6C
         g2STqgxb8iNxYXj42aOjXPZxv+gLpsEKqgut8cVQUvFzmjiWvksrs04jUtiJ9cPyeqSA
         WvYA==
X-Gm-Message-State: AOAM532l8rnHIAHSh88Cv2YFaMDZoPSq+ie45Bd4/QFWorDo2zES7Qo/
	NZ2M36TgGqWROhanM1a3GXdHU5loErs/zQ==
X-Google-Smtp-Source: ABdhPJwY1dwVLoou/mzqmHcbRyEYR+Izmw/7CJre3fVYWSZK15r+fhwucgk2xIz41Cepenb2/s1nDA==
X-Received: by 2002:ac8:7dcd:0:b0:2e1:deb2:4da7 with SMTP id c13-20020ac87dcd000000b002e1deb24da7mr30341352qte.606.1648597825256;
        Tue, 29 Mar 2022 16:50:25 -0700 (PDT)
Received: from jaehee-ThinkPad-X1-Extreme ([2607:fb90:5335:484d:faa7:9c60:cd4d:c9b8])
        by smtp.gmail.com with ESMTPSA id a129-20020a376687000000b0067d186d953bsm10024504qkc.121.2022.03.29.16.50.24
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Mar 2022 16:50:24 -0700 (PDT)
Date: Tue, 29 Mar 2022 19:50:21 -0400
From: Jaehee Park <jhpark1013@gmail.com>
To: outreachy@lists.linux.dev
Subject: mail question
Message-ID: <20220329235021.GA1009484@jaehee-ThinkPad-X1-Extreme>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi I have two questions about sending a mail to the outreachy mailing list. 

Q1: When sending a general question (not a patch), do people still use mutt to do this? I am asking because I sent it using my gmail web interface and it bounced back because it contained an html part. So I'm curious what other people use. To send this mail, I'm using mutt.

Q2: I see that my patch was sent (https://lore.kernel.org/outreachy/) but I didn't get an email yet from the outreachy mailing list. I was wondering if there is a delay? 

Sorry -- i'm still getting used to this mailing list system!
