Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08FBDD2E2
	for <outreachy@lists.linux.dev>; Thu, 23 Mar 2023 21:00:24 +0000 (UTC)
Received: by mail-ed1-f41.google.com with SMTP id i5so511242eda.0
        for <outreachy@lists.linux.dev>; Thu, 23 Mar 2023 14:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679605223;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pNvSmghZY30YvACLew8IXSFhw6nGGj0dyEdsAPyaDQ8=;
        b=AUqdsxUqwNOD9GDSF4bgmpgW9yKkpyPOk4PjFgUWalOSir8DGHDPaKkq3aGw0s49Zu
         VrrghSAY4LX/4GCJM7q640vnBmzuSfh3aJdxEm7jIgsjg6RUNA5nnHK/hQL5WwMjnEDr
         RIzX1aC9icno9dkybPbMtN2DSheb4FRLCQmMQwXAU//+ByQoiMOIHgJqwixk9yUo11Mu
         gTmbWAnUMZp15eY6DjXyBFyCBE6p8FU++qVx346tY6cmzH2kSQeauJv5xpsZacUIyEL3
         mY5GVEG0w9Wu+cB5iS0/xAaDyLCXTSBFAlNujXVhGA6wiQMeFkWjEu/lkeQuqAlsTA9W
         Yk0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679605223;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pNvSmghZY30YvACLew8IXSFhw6nGGj0dyEdsAPyaDQ8=;
        b=eFZLjpsa6gTVvVuMVYwHNOFgSqj6TriMia7v5J7V7IWtI59uwvr9ceWwYKvdZxXPGK
         OyzVLtCgZNHdH1ReGRlyilQyp180oUcVbvwdf9MdkKtTMKaAdrgqTte9dRyN/+5YMfEU
         P5s1LfWAOi4L988D+RoqXHRO5/kZXTDeCsbQgYUOnRjpqvhi8jVqwo9W0XEvtS2Wu1Q9
         IOF8J/3pNRnFUBDUn5cZf6tkqeNabM0+RBHqmq+PN+tBqRgYubL/A5tovJcXWHPlwf1t
         5PGBpxkg8dIPXqUYPavtPgjHACD2+qlzJ2Kq+fJ5QjBX9xTumYeOtDub84nvTr5gZnoC
         pHWQ==
X-Gm-Message-State: AAQBX9cKzbx5gz+4GmeeZ50PPaaTVqHOTXIOxApdNY2IimoNpu0++sJr
	2fsTFt5RLmuZYuxfX3TjpC54SS5TM/D2Ug==
X-Google-Smtp-Source: AKy350Yjuis9jP9aegZuh9PKhFv+Feo0zc4euESpJidZFcLHyTWOamD0Dfr23wI8SDgukCvpaa8eCA==
X-Received: by 2002:a05:6402:114b:b0:4fa:57bf:1416 with SMTP id g11-20020a056402114b00b004fa57bf1416mr683680edw.35.1679605222853;
        Thu, 23 Mar 2023 14:00:22 -0700 (PDT)
Received: from khadija-virtual-machine ([39.41.14.14])
        by smtp.gmail.com with ESMTPSA id c14-20020a509f8e000000b005003fd12eafsm9604062edf.63.2023.03.23.14.00.21
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 14:00:22 -0700 (PDT)
Date: Fri, 24 Mar 2023 02:00:20 +0500
From: Khadija Kamran <kamrankhadijadj@gmail.com>
To: outreachy@lists.linux.dev
Subject: CHECK: Macro argument reuse
Message-ID: <ZBy95LDjVu8e0uNi@khadija-virtual-machine>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hey Outreachy Mentors,

I am working on the folowing check reported by checkpatch.pl:

CHECK: Macro argument reuse 'dir' - possible side-effects?
#11: FILE: drivers/staging/greybus/audio_helper.c:11:
+#define gbaudio_dapm_for_each_direction(dir) \
+       for ((dir) = SND_SOC_DAPM_DIR_IN; (dir) <= SND_SOC_DAPM_DIR_OUT; \
+               (dir)++)


I understand that the macro definition has input argument dir and this
argument is being used inside the definition. This can cause problems if
dir is an expression with side effect.

I am trying to re-write this macro as following:

#define gbaudio_dapm_for_each_direction(dir) \
	do { \
		snd_soc_dapm_direction dir_ = (dir); \
		for (; (dir_) <= SND_SOC_DAPM_DIR_OUT; \
			(dir_)++) \
	} while (0)

This causes a new warning saying,
WARNING: suspect code indent for conditional statements
I am uncertain about whether I am going in the right direction, and I
need some guidance to continue.

Thank you!

Regards,
Khadija

