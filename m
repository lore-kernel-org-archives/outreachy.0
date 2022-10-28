Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4FF0320E
	for <outreachy@lists.linux.dev>; Fri, 28 Oct 2022 18:23:59 +0000 (UTC)
Received: by mail-qv1-f52.google.com with SMTP id t16so4589798qvm.9
        for <outreachy@lists.linux.dev>; Fri, 28 Oct 2022 11:23:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9Y1p+qlCnBvED9zzTgvEOAvn502VsmGTh3U1RRB9d4M=;
        b=CtckMbzfbFh7vgzHdExYZGO17c0BYShLFm7BrWaNDkPteX7CfzTxamsUAgyJ2m0CkC
         9ExGgyX1pO9NtTmNMYh4JAhqdQ7jVPOIf56h3Es4fuNlkUIxsMqbeeHjuvEB2TMhjejW
         SFieVCMwLT6HhSOPBKUSEDPOq1DjnadVfyBGca56ElwF0VdPuDjv1DyxF02Hj0SLU6Vi
         d1+UpKGpPoKLlCkHM/Iv8RLcZnDnwRgEy+57HcAN+G908xL5pzbsAr1Q01tIu9+m6GSA
         QNBzhO7kh7bwqUhbOckGWe4pWG/ZgfB8Yndcil5ma4mdm4Mgcsm3/EJWsFFtD7jjG9di
         x8QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9Y1p+qlCnBvED9zzTgvEOAvn502VsmGTh3U1RRB9d4M=;
        b=KtKag48l6XTkbp4iVWdEyMM2AhL+MDYfiwETnXHA+LYTS3UHH9JBJug0sxoNGsu392
         RQohHoJHZ4ZvVut556HefyJeIEFw04ueAcmbMm89+sR5l4fXIK3nXKeeKRwOBfqLy8Y5
         Jcil6duRooe9kbsTwNT0ghvEz6w440+AU8LZuA6UwvItevAEpk71ll08Wg7HDWOCBPRc
         aCZQfe+D5FEAh0rrhX1wf+5N+BoyURNBrZxX2dgtic/tDKBdpCAtXHEo20aHvDLIZ45k
         R7VVs8PFzEyU0iyk9bne5LstMyUYu+Z+SckBWrwaTifkW62mu45uQ2BWlAwLkV1zcQ6H
         Q8cg==
X-Gm-Message-State: ACrzQf0fwTMSmokXckxfvUA0cpzrV3i4VhuWuhvE+InRzHHrbEzupBxB
	hS/fJ0gtoaVgsWQWgB7/Vu+G6qCqboijS/UROKtutVdKPTZqzs1J+nM=
X-Google-Smtp-Source: AMsMyM7lAP8I+oTjXHQcAhZfM88rDbMJhEtOcdSw6UAygBLxroorTOBfikxLaOJ1bLwTgCHGRGAI+Y9uMallObWtrVM=
X-Received: by 2002:a05:6214:daf:b0:4bb:6849:1966 with SMTP id
 h15-20020a0562140daf00b004bb68491966mr740387qvh.82.1666981438602; Fri, 28 Oct
 2022 11:23:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Tanju Brunostar <tanjubrunostar0@gmail.com>
Date: Fri, 28 Oct 2022 19:23:47 +0100
Message-ID: <CAHJEyKWCVPLYvGB=oeDoZWz+uaBMrn2JhGgjN6pvdhjggOmAiA@mail.gmail.com>
Subject: Outreachy first patch wiki modification proposal
To: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

After setting up my mutt with Gmail, I tested it by sending an email
but it did not go through. After some research, I realized that Gmail
no longer allows less secure apps. The way around this is to set up
two step verification, then generate and use "App password". I would
like to add this to the wiki, as this will save others from the
additional work. Please let me know if I can proceed.

Thanks,

Tanju
