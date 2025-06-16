{config, lib, ...}:
let
  boostrap_url = config.env.KAFKA_BOOTSTRAP_SERVER;

  topics = [
    "topic1"
    "topic2"
  ];

  create_topics_command = lib.concatMapStringsSep "\n"
  (topic: ''
      kafka-topics.sh --bootstrap-server "${boostrap_url}" --create --if-not-exists --topic "${topic}" --partitions 3 --replication-factor 1
  '')
  topics;
in
{
  processes.setup-kafka-topics = {
    exec = create_topics_command;
    process-compose.depends_on.kafka.condition = "process_healthy";
  };
}
