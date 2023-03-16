Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A43C020EE
	for <outreachy@lists.linux.dev>; Thu, 16 Mar 2023 08:08:39 +0000 (UTC)
Received: by mail-pj1-f50.google.com with SMTP id om3-20020a17090b3a8300b0023efab0e3bfso4377573pjb.3
        for <outreachy@lists.linux.dev>; Thu, 16 Mar 2023 01:08:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678954119;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=b90+gQNr2lnL2LoRmOJClEZjlK6HZcUIKxSwK4phHzE=;
        b=KohPP+lV0IhmfMtXa5UK8OyEpy/zvbf18LhKmDUKjzZrIZikzjtfn7NRiBSRm1RT8r
         Hm/rQ7Y+TROGFrWuaB065qeafA7/vscB6klg8YFwkQDkf3ecl3BFm8YRhC6LdYdn7SRt
         IxBW21GtQRtMPlJ39VY5J01vEHP6/hqSV+H9IdPsnSpqMtqIaiv96Kp9+HgAmcKl5ULt
         3qF32CaSPlMjHm2wPNs/OE7+FNLtxKooGfPs3kWHUL5ca6re7FsNB0Re5nFcQhBDr0lJ
         QWizZn4T1U7tmNjn3hsD9Lkuc9sS/fNSiKNj+noleTk94nrD6kfJH+2CfYPTgW0jzN7R
         olzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678954119;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b90+gQNr2lnL2LoRmOJClEZjlK6HZcUIKxSwK4phHzE=;
        b=li1f0nN4LPEqMZtiuMDA7CWBVOiqdZx1svdgmtC4kKDR4kDCxzzP2WE4rfCJWSfNS6
         DYnm4GhQS8GkKZQc4Xs3WBcXWJkwn0/gB7YDMrwSm8wlsAdpjuDL5biwuFEDBHYKwWoO
         E4maLdc+VeP670HUwI0kOg9Znmd+RHhtEmXhiIjsbWcpzx0sG0ZHLOGBqoRaYysxdHTS
         MCdBhbc+rHA5d9txurfGT+X0cMm2bOVh6BvernidIzl0GNETFn+8/fvbKYu14mV/Ngu9
         RYjYBGj/4BxUvbOwyvCH/8BTLqrMM3B5dAUUjXvOWvOw+tgWpdOHnlqzjD6k6rK5mhvB
         MAcQ==
X-Gm-Message-State: AO0yUKWmG1r1Z8AJo1HTFmMVyzGYZ/RiRmN/mzvD4UNfsvJOqJrfcNnb
	vUm8bdQK0slYrqM4KYkaGeKktxoS7Uk=
X-Google-Smtp-Source: AK7set9M8RtIctrHMVAtZuh1H64s88jU1PIls0KcFwZ4N5RrvWs5IgGs4yloVaZuNSrwpbD/mZtE1Q==
X-Received: by 2002:a17:902:d4c2:b0:1a1:86b4:7207 with SMTP id o2-20020a170902d4c200b001a186b47207mr2905425plg.2.1678954118668;
        Thu, 16 Mar 2023 01:08:38 -0700 (PDT)
Received: from sumitra.com ([59.89.173.232])
        by smtp.gmail.com with ESMTPSA id lk15-20020a17090308cf00b0019ab151eb90sm4918406plb.139.2023.03.16.01.08.37
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Mar 2023 01:08:38 -0700 (PDT)
Date: Thu, 16 Mar 2023 01:08:34 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: outreachy@lists.linux.dev
Subject: Warn on macros with flow control statements
Message-ID: <20230316080834.GA43491@sumitra.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


Hi

I am working on the below chechpatch.pl check

WARNING: Macros with flow control statements should be avoided
#42: FILE: ./drivers/staging/qlge/qlge_devlink.c:42:
+#define FILL_SEG(seg_hdr, seg_regs)                                        \
+       do {                                                                \
+               err = qlge_fill_seg_(fmsg, &dump->seg_hdr, dump->seg_regs); \
+               if (err) {                                                  \
+                       kvfree(dump);                                       \
+                       return err;                                         \
+               }                                                           \
+       } while (0)


I was trying to change this macro into an inline function like this

static inline int FILL_SEG(struct devlink_fmsg *fmsg, struct mpi_coredump_segment_header *seg_hdr, u32 *seg_regs)
{
        int err =0;

        err = qlge_fill_seg_(fmsg, &dump->seg_hdr, dump->seg_regs);
        if (err) {
                kvfree(dump);
                return err;
        }
}

But I am not sure whether I am going in the right direction..or how to
move further in it. I am looking for some guidance.



Regards,

Sumitra
