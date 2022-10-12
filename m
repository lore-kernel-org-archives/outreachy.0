Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99A6033DF
	for <outreachy@lists.linux.dev>; Wed, 12 Oct 2022 22:40:07 +0000 (UTC)
Received: by mail-pj1-f50.google.com with SMTP id x31-20020a17090a38a200b0020d2afec803so342254pjb.2
        for <outreachy@lists.linux.dev>; Wed, 12 Oct 2022 15:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f4ek+ASpldsCzNqFxLkYRHUdC07eIMPWtazbzgUyi5w=;
        b=aUVsRzE+TTdKa1ayHQWh+cBm11xzR+ffvyC7jXZxZe7wfj9TP9ygG/1PnSopknOJKA
         zjKtDDwUdB1+crmmjzzMaBmMn6lESZ2eW5vavzVmaxH2e9OW5kggNRQyl+68Zk0i28C+
         UJutntrhEM3Tsu/zIjXNEc+HINAotttEN1VN+M+mvRJ6ysY6zdj5FuETXr+yM1Gg2QVA
         w7Q4l2yxzm6mjs2+O14b/aC5Kou0CTJFjMO2x1lG8y9NcALX3C95fJArccWIrLr7mOA7
         2+aojVv1sfxjkmyLibgaFumzT7lY0rcvb1d2VZhvG4JYzAYGoZrqKoxPzva5zig8NicB
         nTKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f4ek+ASpldsCzNqFxLkYRHUdC07eIMPWtazbzgUyi5w=;
        b=c15sIXULdLUPQseDaz0wq9TaeIGL0b2F5NBCIcpZRDzA8qus7Ksym9upTjwwKWzI8Y
         bqqeIDnsRi52Ie6XwHpgHxIIpufNYsaHXnMot2AqwApVHfR6EDY/IvJyRgfNGxW9b98n
         Fuc4trMnJnPIFkJAnflGHpXiwj5e/p6Ru1eiW8Li+7f60VR0lwPxRDxgT7sMUjiumqDQ
         NhmiBfs9diZ94IlrFsOsTkAbzAnSyAdRr/jWSM+4gcpWoR3oysodpmklwcRBSkiGt5dy
         VVZktMilyhS/vnNZGrt1VqqxG3ONqdoTMU2IIQ8Cg7zLf0PyoseTmPr0FjDhGBZENqz5
         3uQw==
X-Gm-Message-State: ACrzQf3qoMf4m7ivXMCNGIMXSQhpOIDVqjj162w+FtC3ouSpgDh0cl0w
	9F1ibAFxTzSSmCt91SyqeWnDmN2eU4ivQU4AO60=
X-Google-Smtp-Source: AMsMyM4mig08mVgVXBMb0Lby7qG6weRpkRHzl0hF5fQ7C2PyxFKasiaTTEvC8Z/I6Z8zP+0NueAXEQ==
X-Received: by 2002:a17:90a:eb0b:b0:20c:e5fa:db6d with SMTP id j11-20020a17090aeb0b00b0020ce5fadb6dmr7830302pjz.73.1665614406500;
        Wed, 12 Oct 2022 15:40:06 -0700 (PDT)
Received: from emily-beep-beep-boop (192-184-163-51.fiber.dynamic.sonic.net. [192.184.163.51])
        by smtp.gmail.com with ESMTPSA id j188-20020a6255c5000000b005629b6a8b53sm418109pfb.15.2022.10.12.15.40.05
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Oct 2022 15:40:05 -0700 (PDT)
Date: Wed, 12 Oct 2022 15:40:03 -0700
From: Emily Peri <eperi1024@gmail.com>
To: outreachy@lists.linux.dev
Subject: Hi from Outreachy Intern
Message-ID: <Y0dCQ91kKpe2t9CG@emily-beep-beep-boop>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi everyone,

My name is Emily and I'm a new Outreachy intern for the upcoming phase.
I'm looking for projects to get involved in and I'm really intersted in
working on Coccinelle!

I started the first patch tutorial, but ran into an issue. I'm currently
using a dual operating system setup-- I have Ubuntu and Windows on the
same machine. The thing is, I have my Ubuntu filesystem on an external
ssd. The boot parition is on the internal disk. Following the tutorial, after compiling and installing the kernel,
I tried to reboot with it, which caused a kernel panic. The exact error
was (along with the call trace): 
Kernel panic -- not syncing: VFS: Unable to mount root fs on unknown-block(0,0)

From what I read online, one of the problems that may be going on is that the kernel wasn't compiled with the necessary drivers to interact
with the external ssd and filesystem. Am I understanding this correctly?
Can this be solved by recompiling with the necessary settings in
.config?

Another thing I'm seeing is that I need to create an initramfs for the new kernel. Do I need to do both? If the kernel can access the root filesystem on the external ssd, would it still need a temporary filesystem for the boot process?

Finally, I'm wondering if I need to set the "root" variable for grub when it loads the kernel. Such as, GRUB_CMDLINE_LINUX_DEFAULT="root=/dev/sb3" where sb3
is the filesystem partition. I'm just not sure if this is necessary
because grub doesn't have trouble loading my current kernel.

Sorry for so many questions! Hopefully I can figure this out, but any
help is greatly appreciated!

Best,
Emily
