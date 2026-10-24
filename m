Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=74.125.82.42
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792860850;
	b=LwABmMlOSE8/OCtLprpW0E2M143IEhRXBwtc7lcGHoFFrW7sbAlBZhB77iQ2EVq2M1Se
	 d5XmhP0rEwI9p8SOF9mbvHF7PCupKt//c70qpWmjcoo8cFCiifXRmwFhPlAbrotnrp+lR
	 js7wBzpPN1B5o2h5k5GKTnIcpCT2vQSk8KKceyfUGg+umOH+ZmKBBCGJ+WWeNoD/EUz4W
	 ZOvJHN567R5iyCfC8XMRdXxipDNth52hPGbXCSes4DGUYGWr+pzpodSe0HsmA+zTFLG+C
	 zR6qqQuMCt3EszggMimOPmkWr9IT/7qwHaM/uaQ0VYQjY/RdjGhW8XKmy8+13cqtSKg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792860850;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition;
	bh=TDBSmstDcK5r4On+HbMsbVH27Q8HmcM++qwnIz7gMZw=;
	b=XqGKWleqHytl/9MqB0JKn7o2oAgprfC+Blp5R0lhYPMls6OL0A0EjOdTSAWieM80fY5F
	 bFdruVwzqyMlvmH+RRXF/ZygtVuDxbBIxY3FRChk/4G8yDpxKVdXtgKNAQtCEpITgtedX
	 gRmCYmGu0dtRyqyuCWpyC+onRS7cy0Vo+C/Z30zsINiK6oFeKD8c0GKk5BtULGqvtb/Ts
	 dkI2cOLcYh2ZIbDZ6Ko2ZUKNjvYD7bjr8pI2uow0vZKS+PpoHslCGr/jrl2y/8cTiiDIB
	 FRxzYufXj18ZJJ4DxxBuiLnpa6hgnNcZoa/u+E/HPHMxtIXP/pi5xKmeqHRkrIo6tnQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=lVwtwB6C;
	arc=none smtp.remote-ip=74.125.82.42
Received: from mail-dl1-f42.google.com (mail-dl1-f42.google.com [74.125.82.42])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8863F606A31B
	for <outreachy@lists.linux.dev>; Sat, 24 Oct 2026 16:54:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 8863F606A31B
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=lVwtwB6C
Received: by mail-dl1-f42.google.com with SMTP id a92af1059eb24-157fe9d771bso2222552c88.0
        for <outreachy@lists.linux.dev>; Sat, 24 Oct 2026 09:54:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792860850; x=1793465650; darn=lists.linux.dev;
        h=content-disposition:content-type:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=TDBSmstDcK5r4On+HbMsbVH27Q8HmcM++qwnIz7gMZw=;
        b=lVwtwB6ClIhq4Y7d19IyvnTTb1XdfQjiaQ9fR9ZmsQhAIldkV9t8U/elokyywzb7iR
         +39siPIecDNkXe/DKOIDp2rgMoq4DpVyjMPq7OTsU4SR3uJl159E1MAHoerUsTN6NKKt
         IDPOiJjxwLFcFiSkDNnz8+Utx3xHIlD6tJrEsEr/VarJF7OYD5n8Mvopg/v7JkQiLe/u
         du4XQiTLTnImGY8jFXT0j6eK+ufJxe1qcT1HyCUn0mFm4jRtJDi+aGWoRUpBAj2E6QAl
         /3WNAfNRdM5JrL7Jb0+57ezi6DIpS5SsBEjiDZo4PKfYjBVhrdOj1NFHRFlYi4CVZHQ2
         89bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792860850; x=1793465650;
        h=content-disposition:content-type:mime-version:message-id:subject:cc
         :to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=TDBSmstDcK5r4On+HbMsbVH27Q8HmcM++qwnIz7gMZw=;
        b=SznFLIIkKx3scaQJv2a6ZzRofUJUdBhV6fBPJ6jUDbkPCVoLFh9AeG+tQZoFbtkSFS
         v9A/XrS9PNBSD06NSsbJCELMe/01VbtOdfm12BWVuHHnwokorC86Vo3OVHqTn9l/d7o3
         uS2mIXf7PveIvbyshDkkGNZM8UJ42hAgfkdde3QoH7LWXQ9dGiLdCPNpO+2HU0Z/aDs+
         5qMgMjDdBk5yvQzGoUFDE7nO7qzhmPRevtjDtbH2YSPKu+GleJV3YVAaV3pQH3pAyaya
         O1hvB44QULCVyaxSuY5phREj002aogdnKgoKN8PIwXvpP7ZvekMMRD61HAjXofcCZrxr
         QQGg==
X-Forwarded-Encrypted: i=1; AKwUvBxPWK+n4ip80Xerkn5hzy0vsBxjD0X9BAMWDECamc64ZUfy/I3SFdsT2WjtdBrOR6k9gv61QTmhYTE=@lists.linux.dev
X-Gm-Message-State: AFq9FYIFZo6zQhk+UuSIA8SOwORUbXAyQnA2dREJoMscmRtMKDDpatPC
	lDtBTqOcRMSZlvESVED1LNeLk900YhaD08VK2mwbqCiQg45pmWK70e0n
X-Gm-Gg: AYBFou1WpE1cqAOT0GSEr9vFtfSQBmTT/plfvMCHPX4kbgW6q7rzDdPWnvMu4FgABhf
	qGMuTMC5gaMNkOFCHCEBUyDUEGyHd0oUWNTzNSWUpduTRsWApQPLtMkSQl55+y6diIlQqOdj9ug
	TpA2r9gYKsfSpyICOh0ycCdP3KsvcPUXGjT30dcpYj0mNAI061EjZOO2Hrv3Iij1mTrk8RS6oWN
	JKHMjgO7DkBIpKmFbwA/aPCehoMVW/BgxhnXe03Yw0KgMixLWhhGcnRAV7M4oRKVQGyq5yH+Xwe
	TfggDoXmXkJ+wCXhZky4UJw7LMOqIHfs7/Cl6qbKGuuf+7t/9n4D7WN8WtNYqji0Xy4Qsqyv7hC
	M8DHRoXY7r/wTA1jJ7sFj2Rjv3QpdYpL8omg74zinvPuaP1HiO+LQs6TuzQcxfVFgjCkkWieC1h
	odXYpWzRJ0iJgQ+ez9ot8BMNRNbdeKX1YuA7VACd9kYrzgF1lZp2SVZayKofpycqkG8QFpwXnYx
	8k2NTLNhb1IM/GLIRX0PpUusjIsVj/eFBzrfjGRGaHrU12+r0wcw+1hj16n0A==
X-Received: by 2002:a05:7022:3f0a:b0:181:5cac:8f27 with SMTP id a92af1059eb24-199377d50ecmr3720479c88.35.1792860849460;
        Sat, 24 Oct 2026 09:54:09 -0700 (PDT)
Received: from user ([2405:201:c052:b00b:b2dc:5d97:34f5:f1e6])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-198a2e32479sm7740987c88.21.2026.10.24.09.54.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Oct 2026 09:54:08 -0700 (PDT)
Date: Sat, 24 Oct 2026 22:23:51 +0530
From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
To: julia.lawall@inria.fr
Cc: Steven Rostedt <rostedt@goodmis.org>,
	Julian Braha <julianbraha@gmail.com>, outreachy@lists.linux.dev
Subject: Clarification on NFS Tracepoint Build Warnings
Message-ID: <atzinx9DDgmOwOEw@user>
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Julia,

Using the attached configuration [1], i encountered few tracepoint warnings
during the kernel build. I focused on these three NFS warnings:

warning: tracepoint 'nfs_local_open_fh' is unused in module fs/nfs/nfs.o
warning: tracepoint 'nfs_atomic_open_exit' is unused in module fs/nfs/nfs.o
warning: tracepoint 'nfs_atomic_open_enter' is unused in module fs/nfs/nfs.o

I started by investigating the first warning 'nfs_local_open_fh'.

First, I searched for the tracepoint definition in fs/nfs/nfstrace.h and
it defined using TRACE_EVENT(nfs_local_open_fh, ...).

Then, i searched for where the tracepoint is called and found in
fs/nfs/localio.c
	trace_nfs_local_open_fh(fh, mode, status);

next, i checked fs/nfs/Makefile and found:
	nfs-$(CONFIG_NFS_LOCALIO) += localio.o

this localio.o included in NFS module only when CONFIG_NFS_LOCALIO is enabled.

then i also checked .config file and found that CONFIG_NFSD is disabled.
Since LOCALIO depends on both NFSD and NFS_FS, LOCALIO is disabled in my
current configuration.

so, the tracepoint is defined in nfstrace.h but localio.c is not build
because CONFIG_NFS_LOCALIO is disabled.

then i made a change:

diff --git a/fs/nfs/nfstrace.h b/fs/nfs/nfstrace.h
index b15c1732c869..bbd7735a1f67 100644
--- a/fs/nfs/nfstrace.h
+++ b/fs/nfs/nfstrace.h
@@ -1898,6 +1898,7 @@ TRACE_EVENT(nfs_mount_path,
        TP_printk("path='%s'", __get_str(path))
 );
 
+#ifdef CONFIG_NFS_LOCALIO
 TRACE_EVENT(nfs_local_open_fh,
                TP_PROTO(
                        const struct nfs_fh *fh,
@@ -1926,6 +1927,7 @@ TRACE_EVENT(nfs_local_open_fh,
                        __entry->error
                )
 );
+#endif /* CONFIG_NFS_LOCALIO */
 
 DECLARE_EVENT_CLASS(nfs_xdr_event,
                TP_PROTO(

After making this change i rebuilt the kernel using:
	make -j$(nproc) UT=1

The full build compiled sucessfully. However, the build stil reported other
tracepoint warnings, including nfs_atomic_open_enter and nfs_atomic_open_exit.

The nfs_local_open_fh warning did not appear in the build output.

Could you please let me know whether my understanding is correct and whether
guarding the tracepoint definition with CONFIG_NFS_LOCALIO is the apprpriate
fix?

I would appreciate your guidance on whether i should perform any additional
checks before submitting a patch.

Thank you for your time and guidance.

[1] https://lore.kernel.org/outreachy/4423e3b-65f8-6159-4c72-d2e940747021@inria.fr/T/#u

Best regards,
Pavan
