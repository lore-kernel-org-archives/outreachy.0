X-GM-THRID: 6749323707377778688
X-Received: by 2002:a05:6102:20cf:: with SMTP id i15mr7610207vsr.124.1571449383327;
        Fri, 18 Oct 2019 18:43:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:3dd8:: with SMTP id k207ls319851vka.14.gmail; Fri, 18
 Oct 2019 18:43:01 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxIVth338iZZIIO7gJSwo5GS9CcAo6wKOs7khur6+VBfZLfpK7VYQXCYvydjlq+fm7RY+/h
X-Received: by 2002:a1f:3811:: with SMTP id f17mr6964895vka.56.1571449381878;
        Fri, 18 Oct 2019 18:43:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571449381; cv=none;
        d=google.com; s=arc-20160816;
        b=hjc3C77ZraNBXZQiGkUZGPyet+iiQpUMBK5fTDV9pUY+HTDn9xz4Rtour9PdalpiGM
         JcIUYs02d1OvbmOTYTbbiBWoVAlUO1M7nVzNdG6odyeNSoTQZYW8rVRgsCYaV3t12PUy
         PeXsFSWRx0V0QQp80eGdqkwZQJST0RDeo3qeRfXyoti2tTP7hvkXTiXKXu0cbcm78T5l
         jRfDumsJP4up6UAVX8RxIXuvThmMABY9V9FdrmLxIQAW7RSDEa8WNmDXuyGromUwjsoj
         /jAJZ3qTkgHg/GL91hL0Hf4ktNTUmz8fPCQ0p9fjLbU3yHluPy6bLaJ2jN7+Ize59gBk
         DbGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:mail-followup-to:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=atUT/aOISuhCHXPRcwHXfHEfdYgUb6fC/GIRxUr/xX8=;
        b=cRMqvmg1jNb9hiJmTnhghY9TIQuPFmkk7wiT6vmRGcKngqQ4XHRkgQEmrTQXSQAsL8
         Djelfu26tB4dDw41HP48KbLjomRjk1EvgOYoNs/twNNPnbMYeVbKG0QKoRSGbVK5vKEe
         Eq8RiTErJGy6BoXdpVX1S4LdQM7+/quuO0pbO7mXv5aYkdT3Oo37K8/Yb0L8ouv6zJ/P
         IcVsKIraYv0QdM2VyhmqlU86JVDNEV2u+BNr3ZkfTd7Jp7oxJIguklbPk1eo4kwuH71h
         eZWAG+1MT4PG+c6Ak0nbFosjpiY2RGqwJrYYB84FHCyKMQ4SVA+HHimrKOVXjwwPn6ri
         O18w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i79kbk3S;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id v4si419913vka.3.2019.10.18.18.43.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 18:43:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i79kbk3S;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x743.google.com with SMTP id w2so7118319qkf.2
        for <outreachy-kernel@googlegroups.com>; Fri, 18 Oct 2019 18:43:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-disposition;
        bh=atUT/aOISuhCHXPRcwHXfHEfdYgUb6fC/GIRxUr/xX8=;
        b=i79kbk3SkXVJ01CTq1Y0YiDgVk3Oh4uQxwqdOBHiBQvVR+J42nUE+1OfMNk7HwU2yK
         QcNGskEBCf1u29GUpEt4VKvtR0j2AqT5RAgUByNFw62Kc+YFxmr02UWgs47Fdc0ntoHL
         P0rapX8ooiiTijQ+1AsLtv/1/pEsMweyj4woUTr5eN9Qk+T0hCg+BgbWQb1hKurOZcsv
         mOLPKS5fqX8JUFiSFBNWynePx9hzO3XJot7LET11c2OLw5rWcR26TcvSjH+kkH+lbR0H
         Ipht+u7hc0pD2eeWXre5JHyt199QV6Cxt+mbs8Yq0g0ZppyCn6UsL6LERrafX39N48RB
         EnEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:mime-version:content-disposition;
        bh=atUT/aOISuhCHXPRcwHXfHEfdYgUb6fC/GIRxUr/xX8=;
        b=lTWngf9OXAOK4B4urAlcd4zltkyFDH8zGztCWCnbliFlowhmD9hV17MjiXWJrgComi
         wK8nLnPvxTYiYyjnbFVmRDMfFJEmb2qurp1vPunurvfVbX0C/umaYuh3v3QLPpalu3Vr
         QF0ImzZ+viM95DwBr6MqjWP7+uhHs/g3X/dbiZ9EtRSz/cFVQ3VaU6A7PurBPZP3808i
         WWxnSIrw6wdvzcRbp9qKe3hUFXmjrI3hVhtSkluE/GNR9BwIs6cnovESH134VgUKHpZq
         Vkc6R7M9NVU9V7GnTKVKiuAATorYyS0xxH6QrYJtIC9VMGZaI9Yqa91ZilfxsIq32Fvp
         38WQ==
X-Gm-Message-State: APjAAAWoSnOTY4+3yqsXtReL6gMiD4xOCVsmI3ni7ktLXmI939t2Mx8a
	97tJopA+YQ2dDqLJMummmLDzAagbmTFwVQ==
X-Received: by 2002:a37:a448:: with SMTP id n69mr11800604qke.325.1571449381554;
        Fri, 18 Oct 2019 18:43:01 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([162.253.71.54])
        by smtp.gmail.com with ESMTPSA id g45sm4422101qtc.9.2019.10.18.18.43.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2019 18:43:01 -0700 (PDT)
Date: Fri, 18 Oct 2019 20:42:57 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Adjustments in function call
Message-ID: <cover.1571448899.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This patchset fixes a warning and simplify a boolean expression in a
function call.

Javier F. Arias (2):
  staging: rtl8723bs: Fix line over 80 characters
  staging: rtl8723bs: Simplify boolean expression

 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

-- 
2.20.1


