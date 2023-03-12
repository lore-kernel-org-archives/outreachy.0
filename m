Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1B0910FF
	for <outreachy@lists.linux.dev>; Sun, 12 Mar 2023 06:48:25 +0000 (UTC)
Received: by mail-pl1-f182.google.com with SMTP id ja10so131221plb.5
        for <outreachy@lists.linux.dev>; Sat, 11 Mar 2023 22:48:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678603705;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YLJo6J4bJ/TdX5tiIbSW4vuwj1jhdDwg+g2bVAtDyvM=;
        b=M+pa+4iC56CsLfUTlP7W9QPcEzsHolK8Zt3nU/M6uORFgytsihBsyYVuycYaPYifZ2
         vh7Gxz6Yw1TWsWyGg7Vjn4+CqYVL9I3iwMHNeN9CvWD16lONhLgblFMDIWxbc74hRBXl
         zHqdwtBZIyUypXvEzi08pGNL+YyB8CDH72DKqSlby+qGbl9uUpemij1wxC7CewqOq4Vf
         FXs3koxrRAOoPTUWooAjAFIBl9Yut0ljgNvfc+ouROafbl5ae++E7aYAtDnFoeggca42
         qCjK9wjzpv1DtdTFCkyTfg/Pq21xJWrPaoXJaqGQcbwuCJ/E5JXnaBt4PclYNx6dQGfh
         Z1/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678603705;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YLJo6J4bJ/TdX5tiIbSW4vuwj1jhdDwg+g2bVAtDyvM=;
        b=Fs+T6f/NOGbGBm16isJU64+/RcTyr+QHa8KprAB95or7skkUAcyLDFO5ArX/em1QrD
         dkBWfEd1/cIzAWHyfEznIS/+vbWvLFrOTJC0g/ZxtywBvDh/ZAQDGR1bgViRD48sKL4Y
         aj2wif6XIWJR0r6PNVMKlPuqMe13KYMVm3tIfmOmYJvFBGi2b/xEvG/b0jFo3OdvhJNX
         FvuK8WbjF2/qEvX98fQlftQoI/DZ0Nw/i5jzzjUsDJo6gQI1aF/8ob9MJy0/gvz+BPY0
         zOlGA2Mp456BPPSHz1ou/wg1Nyo5VIZpGddi8TnEqDbhU1ThSXl/Sd+GYbxR4LUDqCaV
         B9uQ==
X-Gm-Message-State: AO0yUKURvbaK11ljFxradcvpccg1HNaHXDWOA1KNN4Pyl9uH5hffmpd4
	pgscPw0L4eEt+L1OHkevx8UbPhyxOW7aFg==
X-Google-Smtp-Source: AK7set9MSJhLsEmM2mrez9fZyox2CinC5GGrJJLxq6gkV679vq+c9i0LOnIoprKVS1UxeetpEXPaRA==
X-Received: by 2002:a05:6a21:7888:b0:c7:5d84:d6e0 with SMTP id bf8-20020a056a21788800b000c75d84d6e0mr34964673pzc.31.1678603704822;
        Sat, 11 Mar 2023 22:48:24 -0800 (PST)
Received: from ubuntu ([59.89.166.125])
        by smtp.gmail.com with ESMTPSA id i26-20020aa78d9a000000b005dd98927cc5sm2301972pfr.76.2023.03.11.22.48.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Mar 2023 22:48:24 -0800 (PST)
Date: Sat, 11 Mar 2023 22:48:21 -0800
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: julia.lawall@inria.fr
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH] Staging: qlge: Fix indentation in conditional statement
Message-ID: <20230312064821.GG14247@ubuntu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2303111911510.2802@hadrien>

Hi julia

I will take care of it next time.

Regards,

Sumitra
