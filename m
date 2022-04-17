Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE4B32567
	for <outreachy@lists.linux.dev>; Sun, 17 Apr 2022 17:27:34 +0000 (UTC)
Received: by mail-qv1-f42.google.com with SMTP id n11so9685024qvl.0
        for <outreachy@lists.linux.dev>; Sun, 17 Apr 2022 10:27:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NXZ1iXspFibWUGKNo7AX+YqphGW4FgTIR0CwX0ghDb0=;
        b=ciA6RG3NnkS33UBIHKy1weLXUr+voBZUvUA2vxIZ/mA7Iiey14kGm6QBU9WKjiyelQ
         6LjkVlAb2GJyYclLSsDLXQdsACT92jotDCHxPCV3c6ccfsedjBxFHuvgHkM/wrcSCkkp
         WdDXoa5EPduLP3/ZKBIFyCjDxOS2MWa+OEtFfVncXu1G19QSf0Yd8bINvFcRtUIc9PwA
         7BAVXLZK0qE1yCq49Bsk3x0rRzZeer16dRPCQBJfHlCd+N7aZTPyHtMWPoMYhgtQEg+U
         PytAcTSReYwWynGzj3GRlDVKS7jULuBOaZ9F3p3sl3l98rtKT2SYkA06G88/9ZLTBC4/
         +3aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NXZ1iXspFibWUGKNo7AX+YqphGW4FgTIR0CwX0ghDb0=;
        b=xVXC+2nV6OI6aVQCOEI1D8W6yiGU+bSjjUzSeNuipgjcLe5DEndmkMNNs9ZTKHUeZz
         Dp5jvtpXcAaMWvTaC76ahxWNQfiolPKZd78RMk7ryHJEcojt35vVRhr2HN6MYaq07q/7
         4VHiiZztWOKBxQFPL7qu7EKgyR/4wckN9+UmkMIEogiK4b0Y7YR6DToSP/LMR98hRquq
         5xh8ss7w6mNzbRmdBxHa9WiJ9ZXxBDnv8NwyLfftcL7K7+vsmWcQ6tMlykO4FN2WphYB
         UNbhDF+XF1rUUDoOtdDzqKnt8z2aN+oEgsTm7nhnCEJ2fXW5S3MA4B3VEScZfUw8U5c3
         RFpg==
X-Gm-Message-State: AOAM5312sw1f7oUzoNjt/ap4VqDUkX6WKGSXjjXmLCm8m/DIer3zX2w4
	2jPzYZkhwJCA/zcL9+XitsA=
X-Google-Smtp-Source: ABdhPJyAUFyUJyKWupgh2RmohObaDI8VgEXQtEltSz31poX7uGy604sW7qERQq3Z5Ztd3yfkvj9uIA==
X-Received: by 2002:ad4:5f45:0:b0:444:3d06:135a with SMTP id p5-20020ad45f45000000b004443d06135amr5673848qvg.86.1650216453775;
        Sun, 17 Apr 2022 10:27:33 -0700 (PDT)
Received: from euclid ([71.58.109.160])
        by smtp.gmail.com with ESMTPSA id u187-20020a3792c4000000b0067e679cfe5asm5535194qkd.59.2022.04.17.10.27.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Apr 2022 10:27:33 -0700 (PDT)
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
To: sbrivio@redhat.com
Cc: outreachy@lists.linux.dev,
	Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Subject: [PATCH 0/4] enable passing multiple collections/tests to suboptions
Date: Sun, 17 Apr 2022 13:27:17 -0400
Message-Id: <cover.1650215918.git.sevinj.aghayeva@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable mbuto's -C and -T options accept multiple collection names and test
names, similar to the -c and -t options of run_kselftest.sh.

Sevinj Aghayeva (4):
  mbuto: fix the help error message
  mbuto: undo commit 6199e368
  mbuto: quote variables when calling eval
  mbuto: enable passing multiple collections and tests to suboptions

 mbuto | 71 ++++++++++++++++++++++++++++++++++++-----------------------
 1 file changed, 43 insertions(+), 28 deletions(-)

-- 
2.25.1

