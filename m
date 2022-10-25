Received: from msg-1.mailo.com (msg-1.mailo.com [213.182.54.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A2C1748E
	for <outreachy@lists.linux.dev>; Tue, 25 Oct 2022 17:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1666719183; bh=7uEtR1BWon9gLD1K97HierkPGKPbatQdY2OJ/lufScE=;
	h=X-EA-Auth:Date:From:To:Subject:Message-ID:MIME-Version:
	 Content-Type;
	b=h1LF2RaHh25Nkhyn/hDYkoFpOVTk/YMlS0KQGDAs5o1HtnVnuPgz+ouf9J9Dalb+X
	 vqHyvffRE+92SWQ0SZANIJZUlNEDcOrQstsDFxjP32tuxP+qDNCE7im32pVaBiPBFD
	 4ASzDNdBeLqtvMnOwJBfFRb51OvFgbyefm6yrbss=
Received: by b-1.in.mailobj.net [192.168.90.11] with ESMTP
	via [213.182.55.206]
	Tue, 25 Oct 2022 19:33:03 +0200 (CEST)
X-EA-Auth: zCUPNgLyO0QwDXMXl3er+QnJxStZwkKe6nOVQUYkYgbw+D5GzgVjs7FZbxn2xKv5iRigWGlUq7m4v/LoEyAxqD6dMbmmnbmA
Date: Tue, 25 Oct 2022 06:24:45 +0530
From: Deepak R Varma <drv@mailo.com>
To: ssengar@linux.microsoft.com, kumarpraveen@linux.microsoft.com,
	alison.schofield@intel.com, outreachy@lists.linux.dev
Subject: Coccinelle make error
Message-ID: <Y1cz1Vqe+hpAssz7@debian-BULLSEYE-live-builder-AMD64>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,
I received following error while running make step on the Coccinelle repo. Looks
like there may be some version mismatch with the compiler??? Do you know how to
resolve it?

        make -C bundles/pyml all
        make[1]: Entering directory '/home/drv/git/kernels/coccinelle/bundles/pyml'
        make depend-rec
        make[2]: Entering directory '/home/drv/git/kernels/coccinelle/bundles/pyml'
        cd pyml-current && LD_LIBRARY_PATH=/home/drv/git/kernels/coccinelle/bundles/stdcompat: ./generate
        Fatal error: unknown C primitive `caml_sys_mkdir'
        Aborted
        make[2]: *** [Makefile:61: pyml-current/pywrappers.ml] Error 134
        make[2]: Leaving directory '/home/drv/git/kernels/coccinelle/bundles/pyml'
        make[1]: *** [../Makefile.bundles:100: .depend] Error 2
        make[1]: Leaving directory '/home/drv/git/kernels/coccinelle/bundles/pyml'
        make: *** [Makefile:489: /home/drv/git/kernels/coccinelle/bundles/pyml/pyml.cmxa] Error 2


Thank you,
./drv


