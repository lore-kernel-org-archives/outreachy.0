Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6D6F7B
	for <outreachy@lists.linux.dev>; Fri, 21 Oct 2022 21:56:31 +0000 (UTC)
Received: by mail-pg1-f169.google.com with SMTP id 78so3669471pgb.13
        for <outreachy@lists.linux.dev>; Fri, 21 Oct 2022 14:56:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T+0L0cRPlCkG7Rs2ttlpgmhSPku3dhNcCI+wr/JLTAg=;
        b=pQTyIYGO92TuJfFZGqotZL0W1wNgWw93TTy4fEukUntoRDiENpGr1VvLYSzblSEZFY
         p283jwmNczivFKTiT/HPYqDfw5uJmiCAb9/0/TvSOFC0h1GOFLL73+dRyJUJP5y6/svp
         QMgVpP4AeEPdcygQqXHB0+OOihvGveSkUNwuBdpRt7C+r/MOpQ+tB7YJ+xl1pdiPVNxs
         PCDqPa1c/2gNdZT1WVXuf+bWL+8QhHdTvp4i15eM3wSOEbqjVMyJAoshAgl9e7C3Z1OU
         bKF+7lHoSlRPRAhyRZppKrqTi0aDp6uIGomGW01JZjezR9TJsgIp2Y/BDktsNYIfaG8T
         uKiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=T+0L0cRPlCkG7Rs2ttlpgmhSPku3dhNcCI+wr/JLTAg=;
        b=FgUABhrkuB49lf+w324BND5q5VZaK5XTa6WlEPmk8k0W5OciHJ/mjT1g1hrh9ahq3A
         B8g63WiUkAQPvYlFfcVWH2Ym3YG2UYNTDVRd5Mu5Bffl8M0SQ0WkU1YNMzMnr99544XJ
         mrG498N2KqPfOxcEuliLaSrCDRNGT4oKs5TO2LRBlVmNO3coafRg+VgLZZFEBd1W9j66
         vkEj8Z2tCUYqEljr8S8fsi0WbD9FytkoH5r932sGA9eGbSGyZEh9ALIXb7vC6t/Lk42O
         P5DpIN+V9S7BEPX66LDynnKLtqFabXxceluvXkwvYtjT4jcvY8S+RM+74C1V1Wj43P/t
         ArSA==
X-Gm-Message-State: ACrzQf3mZUyZ84ap4zHm4l6eCZ2mnAyfOj8nQtoZjYyeghi29WYedtKD
	tvPuzSUb0Hg0O5HiR3MpzDpjeMSUZCbhlw==
X-Google-Smtp-Source: AMsMyM4EiwaEBmL1HIeVuzIFIVb5+L+MjEQ/M7DgAFDROKtIKhLWk8hhQ0zJC7H2b+2yM4Eb5iQusw==
X-Received: by 2002:a63:1861:0:b0:462:4961:9a8f with SMTP id 33-20020a631861000000b0046249619a8fmr18182802pgy.372.1666389391009;
        Fri, 21 Oct 2022 14:56:31 -0700 (PDT)
Received: from marshmallow (192-184-163-51.fiber.dynamic.sonic.net. [192.184.163.51])
        by smtp.gmail.com with ESMTPSA id r24-20020aa79638000000b00562eff85594sm15710985pfg.121.2022.10.21.14.56.30
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Oct 2022 14:56:30 -0700 (PDT)
Date: Fri, 21 Oct 2022 14:56:28 -0700
From: Emily Peri <eperi1024@gmail.com>
To: outreachy@lists.linux.dev
Subject: [KERNEL NEWBIES ACCESS] eperi
Message-ID: <Y1MVjARgRcJl9xR1@marshmallow>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

I'd like to contribute to the Kernel Newbies Wiki.
Thanks!

Best,
Emily
