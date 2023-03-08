Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44146107B9
	for <outreachy@lists.linux.dev>; Wed,  8 Mar 2023 20:18:07 +0000 (UTC)
Received: by mail-pl1-f181.google.com with SMTP id a2so18841173plm.4
        for <outreachy@lists.linux.dev>; Wed, 08 Mar 2023 12:18:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678306686;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Rau3eSxuzw5iKeUWq4JfR6dP0ne0F3Hir4f6acA8AVk=;
        b=Y6pliLAEu0qrW7x1j4I9vTBgbrp8bI0lXTm5s65pJGOSSxU3A2PPNbYZK6xBFePPxI
         EwmV0X7Zfau+E7VUsKZXSTL6BsrMwoxqSI12GS7UOXqj2ENdq5jxEO2TIytRQTM/CtKG
         PMDrv3hetvtE7yrPtQEdo8JsgwROBd+OliR2oWfGXhg3oj4uIOrWO6/+pcoc/pLOuq8b
         Fyyh3P9B/vvED95kS8Feqcqun7Fpxy5alvkJG0sPbS4yi94kszjg1A1iQ59jL3683UU8
         /2lXjAIfuxGnUkP79xdHjWp34sNbVDVV4m/4teRJlAo3NxGf6rqweOnaa72OUHuzvCOh
         HwEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678306686;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Rau3eSxuzw5iKeUWq4JfR6dP0ne0F3Hir4f6acA8AVk=;
        b=PmxUufnHF1bcDUSrzC0TgWM4e9DAtwjRu6sLX+1wk178VkFlzjFCnSHw9O45lW7Jv8
         cqReb6WcAgYtsnAZBZXGop1xT7npkOKQ//TLCiuniksrswgJulHKilQt5HTd5lq6EJFn
         NrQlc8zkdubTh6O3nStqbgVB4gvKOGlFqhypWVw4OPCHb9Pw7AOXQ2zGmHNrarClnLWp
         OyxjGtK/72VH7zesg42L7o8YCXWhIR/NevcM6D12gfLG805xRcyvKV4rupwhcBx3YGQt
         aiZYqWn1Sw+eJQRE0NL9dsZiVecDyRHqjuYOagSmF4ecje4vR4CdWSQj6Kts+Xk9PCHN
         K6RA==
X-Gm-Message-State: AO0yUKVazLzCsCVmi+mRfzxvseIDBzyrEgYJ0NT6sYfnv1ziHceQ2EhB
	4D1wyHKTQ5Jz5AAQDPzqAZFF/lTaiD2wyjG+
X-Google-Smtp-Source: AK7set9sneZDDyEN9ND8h/TTaDmT5TEVeofNkytmAAJJSiAcGzyLJKVFc7NYnKCwz/22+x02zxFPbw==
X-Received: by 2002:a17:90a:194a:b0:237:50b6:9838 with SMTP id 10-20020a17090a194a00b0023750b69838mr21533679pjh.45.1678306686612;
        Wed, 08 Mar 2023 12:18:06 -0800 (PST)
Received: from CloudiRingWorld ([122.231.69.163])
        by smtp.gmail.com with ESMTPSA id y21-20020a17090ad71500b002369d39672asm149972pju.33.2023.03.08.12.18.05
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 12:18:06 -0800 (PST)
Date: Thu, 9 Mar 2023 04:18:03 +0800
From: Kloudifold <cloudifold.3125@gmail.com>
To: outreachy@lists.linux.dev
Subject: [KERNEL NEWBIES ACESS] Kloudifold
Message-ID: <ZAjteyeSt2rfa+El@CloudiRingWorld>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear Outreachy team,

I am an Outreachy applicant who recently followed the tutorial for the Kernel Firstpatch on your website. During the process, I encountered a couple of issues that I believe could benefit from an update to the tutorial.

Firstly, the tutorial assumes that the .config file used to compile the distribution kernel is stored in the /boot/ directory. However, some distributions, including the one I use, do not follow this convention. Instead, the .config file is stored in the /proc/ directory as a compressed file. To address this issue, I propose updating the tutorial with the command "zcat /proc/config.gz > .config" to extract the .config file from /proc/ and use it for compiling the kernel.

Secondly, the tutorial instructs users to install the kernel using LILO as the boot manager. However, many modern distributions, including the one I use, use GRUB as the default boot manager. This results in an error when executing "sudo make modules_install install" as the system cannot find LILO. To resolve this issue, I suggest adding instructions for manually installing the kernel and initramfs and configure GRUB.

In summary, my proposed updates to the Kernel Firstpatch tutorial include:

    Adding a command to extract the .config file from /proc/ using "zcat /proc/config.gz > .config"
    Updating the instructions for installing the kernel and initramfs manually and configuring GRUB

I believe that these updates will improve the usability of the tutorial for users who encounter similar issues. Thank you for your consideration, and please let me know if you have any questions or concerns.

Best regards,
Kloudifold.

