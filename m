X-GM-THRID: 6401746090885906432
X-Received: by 10.28.169.83 with SMTP id s80mr63975wme.1.1490525383361;
        Sun, 26 Mar 2017 03:49:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.29.83 with SMTP id d80ls916868lfd.37.gmail; Sun, 26 Mar
 2017 03:49:41 -0700 (PDT)
X-Received: by 10.25.204.21 with SMTP id c21mr2089286lfg.19.1490525381816;
        Sun, 26 Mar 2017 03:49:41 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t131si625588wmf.1.2017.03.26.03.49.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 03:49:41 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,225,1486422000"; 
   d="scan'208";a="266240561"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Mar 2017 12:49:41 +0200
Date: Sun, 26 Mar 2017 12:49:40 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: mawilcox@microsoft.com, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 1/5] include: linux: pid: Update
 documentation.
In-Reply-To: <58d79225.1bd1620a.579a7.5a9d@mx.google.com>
Message-ID: <alpine.DEB.2.20.1703261248590.2204@hadrien>
References: <cover.1490516333.git.rvarsha016@gmail.com> <58d79225.1bd1620a.579a7.5a9d@mx.google.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 26 Mar 2017, Varsha Rao wrote:

> This patch adds comments to update documentation. Also remove extra
> space between full stop and and new sentence, of existing comments.

Actually, at least in American English, a period should be followed by two
spaces.  Like in this email :)

julia

>
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
>  include/linux/pid.h | 43 ++++++++++++++++++++++++++++++++-----------
>  1 file changed, 32 insertions(+), 11 deletions(-)
>
> diff --git a/include/linux/pid.h b/include/linux/pid.h
> index 4d17931..c2bea47 100644
> --- a/include/linux/pid.h
> +++ b/include/linux/pid.h
> @@ -5,32 +5,32 @@
>
>  enum pid_type
>  {
> -	PIDTYPE_PID,
> -	PIDTYPE_PGID,
> -	PIDTYPE_SID,
> -	PIDTYPE_MAX
> +	PIDTYPE_PID, /* Process ID */
> +	PIDTYPE_PGID, /* Process group ID */
> +	PIDTYPE_SID, /* Process session ID */
> +	PIDTYPE_MAX /* Number of ID types */
>  };
>
>  /*
>   * What is struct pid?
>   *
>   * A struct pid is the kernel's internal notion of a process identifier.
> - * It refers to individual tasks, process groups, and sessions.  While
> + * It refers to individual tasks, process groups, and sessions. While
>   * there are processes attached to it the struct pid lives in a hash
>   * table, so it and then the processes that it refers to can be found
> - * quickly from the numeric pid value.  The attached processes may be
> + * quickly from the numeric pid value. The attached processes may be
>   * quickly accessed by following pointers from struct pid.
>   *
>   * Storing pid_t values in the kernel and referring to them later has a
> - * problem.  The process originally with that pid may have exited and the
> + * problem. The process originally with that pid may have exited and the
>   * pid allocator wrapped, and another process could have come along
>   * and been assigned that pid.
>   *
>   * Referring to user space processes by holding a reference to struct
> - * task_struct has a problem.  When the user space process exits
> - * the now useless task_struct is still kept.  A task_struct plus a
> - * stack consumes around 10K of low kernel memory.  More precisely
> - * this is THREAD_SIZE + sizeof(struct task_struct).  By comparison
> + * task_struct has a problem. When the user space process exits
> + * the now useless task_struct is still kept. A task_struct plus a
> + * stack consumes around 10K of low kernel memory. More precisely
> + * this is THREAD_SIZE + sizeof(struct task_struct). By comparison
>   * a struct pid is about 64 bytes.
>   *
>   * Holding a reference to struct pid solves both of these problems.
> @@ -45,6 +45,10 @@ enum pid_type
>   * struct upid is used to get the id of the struct pid, as it is
>   * seen in particular namespace. Later the struct pid is found with
>   * find_pid_ns() using the int nr and struct pid_namespace *ns.
> + *
> + * @nr: Pid value.
> + * @ns: Represents the namespace to which pid value belongs.
> + * @pid_chain: Hash chain.
>   */
>
>  struct upid {
> @@ -54,6 +58,15 @@ struct upid {
>  	struct hlist_node pid_chain;
>  };
>
> +/*
> + * struct pid
> + * @count: Reference counter.
> + * @level: Number of namespaces in which the process is visible.
> + * @tasks: Lists of tasks.
> + * @rcu: RCU helper.
> + * @numbers: Instance of upid for each level.
> + */
> +
>  struct pid
>  {
>  	atomic_t count;
> @@ -66,12 +79,20 @@ struct pid
>
>  extern struct pid init_struct_pid;
>
> +/*
> + * struct pid_link is used for per process linkage into hash tables.
> + * @node: List element.
> + * @pid: Pointer to the struct pid of the process.
> + */
>  struct pid_link
>  {
>  	struct hlist_node node;
>  	struct pid *pid;
>  };
>
> +/* get_pid() checks availability of process id and if available assigns
> + * process ID.
> + */
>  static inline struct pid *get_pid(struct pid *pid)
>  {
>  	if (pid)
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/58d79225.1bd1620a.579a7.5a9d%40mx.google.com.
> For more options, visit https://groups.google.com/d/optout.
>

