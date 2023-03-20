Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9662D1104
	for <Outreachy@lists.linux.dev>; Mon, 20 Mar 2023 07:14:05 +0000 (UTC)
Received: by mail-ed1-f46.google.com with SMTP id y4so42810839edo.2
        for <Outreachy@lists.linux.dev>; Mon, 20 Mar 2023 00:14:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679296443;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KWzkgsuiZKMfIYW9O1eDTH1YQdvWXROtj/vUGJBZ2K4=;
        b=nVOe8cQheystZKP0F5vloPJfWmeTz4lV/RuUENGsst6FAKXgOpeFyDX+UiCw43C2Xi
         owidj8qQNSDlzD/fnj33Pxg3yWOzlSiKoOJwOYK3b+8b+YeKC75msM3CGWFfU+7blnd4
         H0xSXR44n2LwJAsPnVa5bHBHSwoHjdUePYNSrQJzNhGtNF9on2xqGvSUMEYhXj+qNE+p
         cNy+OEFFThbHFCJlii3dfbxSecXUVZa6uCHybbFWmX2XP2V6TkmYZIkbsVFm2Pgb/R7t
         8hE3BPkBn0d8a+7KgxfxZ+6KAG7P8PfkAQN3hg37CwxpoUeb3raeIczTAPtONBQ2Wm4Q
         wxYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679296443;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KWzkgsuiZKMfIYW9O1eDTH1YQdvWXROtj/vUGJBZ2K4=;
        b=hp0oTg0AjDt6T1J4oMr1WXFjy4gtRcMYLoZG2WJceqFmfPTUMnU033yfqvxPzR0Fp+
         L25qJgwUbVQCkrIJv/Akwec4xkgrcs9cyLsbUGCmI2R5thsDoNNYXRz0Yc8ZRBizxKPE
         NHrGHHk2s1WR9g7VI4m7Qh86V2rD7U2Y8VOi4dxHghlrdUPf74ZSIcNpfwg5zO3ubC7F
         MTswAzfLM2KdruuamXBiyiCFOpppH/RhDGSW9NGJ7KMJ3659kiExzPnJ9iLx/qw2yl4L
         YT8KAFzjmwH5LsCVaLtd7BBvCnKh85tL5vsKXb0ks9U2Kd6hbT2lRiaEPj1u+lQAQKpR
         B3RQ==
X-Gm-Message-State: AO0yUKUfe23V2YIavpcHjX5fpmEsoAJ5r4sPDG4JPGOblA5OIU4kF5ZB
	h+qJ7DsWUGlOIDk34mCdZeDyAcH1K/UKk6SI
X-Google-Smtp-Source: AK7set/GtO0tiZ/HFZ6lm2jrSADPKRRukynpVho5WDLHwzieUoOdVRvWuDAMV/KE9Czg1q1s1NYs/A==
X-Received: by 2002:a17:906:26c1:b0:932:b790:932c with SMTP id u1-20020a17090626c100b00932b790932cmr8217138ejc.44.1679296443465;
        Mon, 20 Mar 2023 00:14:03 -0700 (PDT)
Received: from khadija-virtual-machine ([39.41.14.14])
        by smtp.gmail.com with ESMTPSA id z9-20020a1709067e4900b0092be390b51asm4014210ejr.113.2023.03.20.00.14.02
        for <Outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Mar 2023 00:14:03 -0700 (PDT)
Date: Mon, 20 Mar 2023 12:14:00 +0500
From: Khadija Kamran <kamrankhadijadj@gmail.com>
To: Outreachy@lists.linux.dev
Subject: Help with Ubuntu Virtual Machine
Message-ID: <ZBgHuKm52X3tpQKh@khadija-virtual-machine>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Outreachy Mentors!

I am an Outreachy applicant and I am part of this community since the
communication period. While I was working on my Virtual Machine, it
accidentally shut down and it has been stuck on boot since then.

This mail is to ask for help with this problem. I have been stuck for
two days and I have tried several slutions but the problem still
remains.

I have windows10 installes and I am using Ubuntu 22.04.1 0n VMWare
Virtual Machine(13GB RAM and 2x4 cores). Here is the error:
-----------------------------------
Gave up waiting for root device. Common problems:
-Boot args (cat /proc/cmdline)
  -Check rootdelay= (did the system wait long enough?)
-Missing modules (cat /proc/modules; ls /dev)
ALERT! UUID=718ed077-947d-4018-80ad-59825678e81d does not exist. 
Dropping to a shell!

BusyBox v1.27.2 (Ubuntu 1:1.27.2-2ubuntu3.2) built-in shell (ash)
Enter 'help' for a list of built-in commands.

(initramfs)_
------------------------------------

I have tried adding rootdelay and I have also tried chaning UUID to
/dev/sda3 (where kernel is installed). I have used the older versions to
run some commands, 'sudo apt-get clean' and 
'sudo update-initramfs -k 6.3.0-rc2+ -u' command, but the problem
remains.

Kindly help me with this problem.

Thank you.

Regards,
Khadija

