Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E3BED5
	for <outreachy@lists.linux.dev>; Fri,  1 Apr 2022 09:35:18 +0000 (UTC)
Received: by mail-wr1-f52.google.com with SMTP id a1so3331694wrh.10
        for <outreachy@lists.linux.dev>; Fri, 01 Apr 2022 02:35:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MHc4kL4tHnaD/k7QZHyRxRtGvdo2Hat2LBYSinl0WGU=;
        b=ho0RIAzbZGOHMTkgLzmpSSKB4Yot+O/IN6PjBt/iRFi/IdWU4sW9X90o5Hd4fpGZhc
         GwwmG85vq8zd5xbGTJ2PWSAXYq2/NI7IApyWxxrKs1bNlwH29ROJTrnQXir6wI2ZG523
         /LMQkHMXUth2ENcekoExXH0yaBjGLQjoebmSTy8wotqKtlRAbFNMrVHf3ygqaI71AZxT
         VCVRxdlpT4fRIZkGeXfWKodZ16lTYCSkiQ6cdYiGkcs1w9lFwrQzvf/9/kknLzif3i15
         EBzQTad6/aCB4so+HTrz4HHY+UJ8t248rY1A6JXifyB0q3XsElwz79xf35j9o9ONSi5B
         YaYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MHc4kL4tHnaD/k7QZHyRxRtGvdo2Hat2LBYSinl0WGU=;
        b=YNDMkYR3f7Cl5ziIFpk3KHcCDuASUeV/4rVpXZZCqvexOOTqdLQfqHOmPuyDxlZcA1
         hy+7dFRJYNlHPLNrFfZu1MsUZn8dDb2v0UYOJLiExrbhCg0G1GC+y2swNZ3M77bLJyrp
         zNN3eXNVvagTZ/ITK4RGYTV8/pgt/G7/lWq46hnu88saOwdYXa0yiGIIC6UWekGta4XF
         etIeLy9GiFfSlFSfs0JyWN0Rb25F/0E9Pq2SxB8XjpOZ4o04JLZs22zE4NyJR+TLOrJE
         wg7bVNnkyIbpS9sHfpzXbAHeR/+LCKwENGvyuABpeRmSYrfxO4Hq4159O1Tlv7C4rG2X
         WGLg==
X-Gm-Message-State: AOAM530Ovn+pEVm+yq735W59hqbibGBPFbMdciJnf8xXagx5nOQUUOEm
	MIwmgCcaI0mQkmKm4t2NyKEUBNXEcEk=
X-Google-Smtp-Source: ABdhPJycuzGiaB66t5g0Iz481JmyGJYebB1aK10YzZRZ4FUAG4JtebPUaKDbjJESPVxDsbaF+H8NkQ==
X-Received: by 2002:a5d:6301:0:b0:205:cb42:74a5 with SMTP id i1-20020a5d6301000000b00205cb4274a5mr7106903wru.385.1648805715718;
        Fri, 01 Apr 2022 02:35:15 -0700 (PDT)
Received: from leap.localnet (host-95-249-145-232.retail.telecomitalia.it. [95.249.145.232])
        by smtp.gmail.com with ESMTPSA id m8-20020a05600c3b0800b0038cc8f116d3sm9331812wms.44.2022.04.01.02.35.14
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Apr 2022 02:35:14 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy@lists.linux.dev
Subject: Compilation errors
Date: Fri, 01 Apr 2022 11:35:13 +0200
Message-ID: <3603561.MHq7AAxBmi@leap>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hello everybody,

I've made hundreds of Linux builds and never had problems, but since=20
few days I'm not anymore able to compile the kernel with GCC or Clang.

I get many errors like the following and the build crashes:

# CC=3Dgcc-11 make -j12
[...]
drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c: In function =E2=80=98bnx2=
x_check_blocks_with_parity3=E2=80=99:
drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c:4917:4: error: case label =
does not reduce to an integer constant
    case AEU_INPUTS_ATTN_BITS_MCP_LATCHED_SCPAD_PARITY:
[...]
make[5]: *** [scripts/Makefile.build:289: drivers/net/ethernet/broadcom/bnx=
2x/bnx2x_main.o] Error 1
make[4]: *** [scripts/Makefile.build:551: drivers/net/ethernet/broadcom/bnx=
2x] Error 2
make[4]: *** Waiting for unfinished jobs....

One more example...

# make mrproper
# CC=3Dclang make -j12
[...]
drivers/usb/typec/tcpm/tcpm.c:4724:3: error: case label does not reduce to =
an integer constant
   case BDO_MODE_TESTDATA:
   ^~~~
make[4]: *** [scripts/Makefile.build:288: drivers/usb/typec/tcpm/tcpm.o] Er=
ror 1
make[3]: *** [scripts/Makefile.build:550: drivers/usb/typec/tcpm] Error 2
make[2]: *** [scripts/Makefile.build:550: drivers/usb/typec] Error 2
make[2]: *** Waiting for unfinished jobs....

Can someone help me to understand what is happening and how to fix this iss=
ue?
Could it depend on a configuration option that, unintentionally enabled, ma=
ke=20
the build fail whenever "case label does not reduce to an integer constant"=
 is=20
hit? If so, which option?

Thanks,

=46abio M. De Francesco


