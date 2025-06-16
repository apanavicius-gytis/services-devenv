{...}:
{
  processes = {
    kafka_ui = {
      exec = "podman run -it --rm --network=host -e DYNAMIC_CONFIG_ENABLED=true -e KAFKA_BROKERS=localhost:9092 ghcr.io/kafbat/kafka-ui";
      process-compose.depends_on.kafka.condition = "process_healthy";
    };
  };
}
