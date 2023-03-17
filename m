Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C4B67475
	for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 17:50:12 +0000 (UTC)
Received: by mail-pl1-f171.google.com with SMTP id o11so6130480ple.1
        for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 10:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679075412;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hrQpnVltxGaArL9L7YNAmIe/p8pFCnk6labk9GT2yYk=;
        b=d32mIRhUTD50h6Xs+b1Nq+EVRDqmbeON3I2WfTl3Tk+bZ2K32t/HCij3PIr0xCMXv1
         Vz938ywDTALQsPNCym8+ku0nCZb7d5nZ02gQRl0TTnfVW9XggOM2qeSPOGwj8BAUOGjW
         Z4qNXpJ2HJWgKp+HkH1tzXAjHDkGU5nOyt9Dywq/4ivMZMbUgN7Meqq/MZxR40yXUQnX
         RF5utlcwHrNSPV9yV8tfK4lttfxitjFoYCNkNSbbX5WLE7DR9lRZV/je+iUHRcGy89A5
         Z5LDddeiZmDgfmG8clLyjl97unsgI8VC/7bSsgZBKn/cuErS9hJkwq/ZRdXg92OcwSDl
         LwlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679075412;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hrQpnVltxGaArL9L7YNAmIe/p8pFCnk6labk9GT2yYk=;
        b=qHmrCNfJUcLRN+ClcmCi6cIy+eKt4GjZMapdOOt6OAP+SwOpbkz69t3UY0YW6m2h5E
         0Ivd7HgBBcumK3n8c36Eat9/UdW+p8AMh779NbI09P2vniYvd/PwsDswOJg06EShghXg
         dfQAL4dzQMOz/jmP2wqbnmcJCU4uTEC1hm0GhXrS5utTKFomv/I0s53OCYu+FI4PJhJd
         Ftwx47w09eyiw+MuU4sFwP1NEB1LWnv7ggrJo8XuKAVNbHY1jbHoppkUyQkVmKri3nSW
         JlptxZTOJRKP+Snn7V6lUopeuuVKuZZ4RzXUKH666oLxjYOGcJtIKw0fzKOQ0tXqohv6
         rB9A==
X-Gm-Message-State: AO0yUKXgLhntimkC5c/rEIEs+y02wEURgNh0tn+R4dFGnBnqLHmTv9Ug
	ODefMmQqEN6r1sX3xA6TqEs=
X-Google-Smtp-Source: AK7set/ZgoJHI7oyJN4vNXZ1+zTQ/ZKVifzCHPVtnP6s/4kg7okAb2NP4wmABU/pSMM/b7k0/C7CtQ==
X-Received: by 2002:a05:6a20:2451:b0:cc:ac05:88f7 with SMTP id t17-20020a056a20245100b000ccac0588f7mr10292255pzc.34.1679075411797;
        Fri, 17 Mar 2023 10:50:11 -0700 (PDT)
Received: from sumitra.com ([117.98.68.136])
        by smtp.gmail.com with ESMTPSA id c26-20020aa781da000000b0062578514d6fsm1840801pfn.58.2023.03.17.10.50.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Mar 2023 10:50:11 -0700 (PDT)
Date: Fri, 17 Mar 2023 10:50:07 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: outreachy@lists.linux.dev
Subject: [KERNEL NEBIES ACCESS] Sumitra Sharma
Message-ID: <20230317175007.GA3275@sumitra.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alison,

The outreachyfirstpatch document directly links the ".rst" files at many places under different sections. And as Fabio says that .rst files are source files and are only meant to be used for making changes and not to consult. Therefore,  I would like to propose the idea of changing the
links of the .rst source files to their respective .html/.pdf files.

The specific changes are:

1. approved email client:

https://elixir.bootlin.com/linux/latest/source/Documentation/process/email-clients.rst
--------------------------------------------------------------
https://www.kernel.org/doc/html/latest/process/email-clients.html


2. coding style:

https://elixir.bootlin.com/linux/latest/source/Documentation/process/coding-style.rst
--------------------------------------------------------------
https://www.kernel.org/doc/html/latest/process/coding-style.html


3. In https://kernelnewbies.org/PatchPhilosophy under the section "Further Reading":

https://elixir.bootlin.com/linux/latest/source/Documentation/process/coding-style.rst
-----------------------------------------------------------------
https://www.kernel.org/doc/html/latest/process/coding-style.html


https://elixir.bootlin.com/linux/latest/source/Documentation/process/submitting-patches.rst
-----------------------------------------------------------------
https://www.kernel.org/doc/html/latest/process/submitting-patches.html


https://elixir.bootlin.com/linux/latest/source/Documentation/process/submit-checklist.rst
-----------------------------------------------------------------
https://www.kernel.org/doc/html/latest/process/submit-checklist.html


Kindly provide me the write mode access and guidance to the further steps to do the same.

Regards,

Sumitra
